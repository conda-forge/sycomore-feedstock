mkdir build
cd build

cmake ^
  -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=OFF ^
  -DBUILD_PYTHON_WRAPPERS=ON ^
  -DCMAKE_INSTALL_PREFIX=%PREFIX% -DPython_EXECUTABLE=%PYTHON% ^
  ../
if errorlevel 1 exit 1

cmake --build . --config Release --target install --parallel
if errorlevel 1 exit 1
