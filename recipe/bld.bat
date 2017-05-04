cmake -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=%PREFIX% .
cmake --build . --config release --target install

:: Build and run the tests
cmake -E copy %RECIPE_DIR%/27d89caa55e1f42cdbbed5a322b51c702066d871.tar.gz tests/
cmake -DCHFL_BUILD_TESTS=ON .
cmake --build . --config release
ctest --output-on-failure -C release
