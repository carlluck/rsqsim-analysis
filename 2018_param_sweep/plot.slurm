#!/bin/bash

#SBATCH -t 24:00:00
#SBATCH -N 1
#SBATCH -p scec
#SBATCH --mem 0

cd /home/scec-02/kmilner/git/rsqsim-analysis/2018_param_sweep

java -Xmx50G -cp /home/scec-02/kmilner/opensha-dev-all.jar scratch.kevin.simulators.ParamSweepCatalogsWriter
