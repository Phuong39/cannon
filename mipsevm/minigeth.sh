#!/bin/bash -e
(cd ../ && npx hardhat compile)
(cd ../mipigo && ./build.sh)
go build
./mipsevm ../mipigo/minigeth.bin
