#!/bin/bash

cd large_files
rsync -av * kmilner@opensha.usc.edu:/var/www/html/ftp/kmilner/simulators/rsqsim-analysis/large_files
