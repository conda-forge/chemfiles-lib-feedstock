cmake  -G "$CMAKE_GENERATOR" -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=$PREFIX .
cmake --build . --config release --target install

# Build and run the tests
cp $RECIPE_DIR/c26f254cd7bff7e476bf065403fbd0a6a47fea38.tar.gz tests/
cmake -DCHFL_BUILD_TESTS=ON .
cmake --build . --config release
ctest --output-on-failure -C release
