#!/bin/bash
#SBATCH --job-name=test
#SBATCH --mail-user=shyu0@cse.cuhk.edu.hk
#SBATCH --mail-type=ALL
#SBATCH --output=/research/dept8/fyp22/lj2202/penet.txt ##Do not use "~" point to your home!
#SBATCH --gres=gpu:4
#SBATCH -w gpu34

## Below is the commands to run , for this example,
## Create a sample helloworld.py and Run the sample python file
## Result are stored at your defined --output location

mkdir ../dpc_train
CUDA_VISIBLE_DEVICES="0" python main.py -b 1 -n pe --evaluate ./pe.pth.tar --test   --data-folder-save ../dpc_train --data-folder ./

