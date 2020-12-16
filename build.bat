@echo off
subst w: "C:\stuff\code\stuff"
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat" x64
w:
set cl_flags=/Gm- /W1 /MP /MTd /Z7 /Od /EHsc /nologo
set link_flags=/out:stuff.exe /incremental:no /debug:full /nologo
set src_files=w:\all_files.cpp
set lib_files=
pushd w:\build
cl %cl_flags% %src_files% %lib_files% /link %link_flags%
popd
echo build completed.