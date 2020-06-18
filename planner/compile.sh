#!/bin/bash

git clone https://github.com/aig-upf/temporal-planning
cd temporal-planning
python fd_copy/build.py release64
./build.sh