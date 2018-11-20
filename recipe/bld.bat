cmake -G "%CMAKE_GENERATOR%" -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=%PREFIX%/Library .
cmake --build . --config Release --target install

:: Build and run the tests
cmake -E touch tests\data\dee3659fad8106611a9fd0f0a5ee4596f7fb869d
cmake -DCHFL_BUILD_TESTS=ON .
cmake --build . --config Release
ctest --output-on-failure -C Release
