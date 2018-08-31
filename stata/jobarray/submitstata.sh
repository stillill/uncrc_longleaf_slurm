#!/bin/bash

module add stata
cp myscript.do $1/work/job$2
cd $1/work/job$2
stata -b do myscript $2
