#!/bin/bash
#SBATCH -mp_20_train                                # Job name
#SBATCH -N4 --gres=gpu:H100:1                       # Number of nodes and GPUs required
#SBATCH --gres-flags=enforce-binding                # Map CPUs to GPUs
#SBATCH --mem-per-gpu=32G                           # Memory per gpu
#SBATCH -t3:00:00                                   # Duration of the job
#SBATCH -oreports/Report-%a.out                     # Combined output and error messages file
#SBATCH --array=0

module load anaconda3                               
conda activate mdl12-diffcsp

cd $HOME/scratch/DiffCSP

srun $HOME/scratch/.conda/envs/mdl12-diffcsp/bin/python diffcsp/run.py data=mp_20 expname=mp_20_train