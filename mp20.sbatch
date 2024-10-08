#!/bin/bash
#SBATCH -DiffCSPMP20                           
#SBATCH -n4                                     
#SBATCH --mem-per-cpu=16G                       
#SBATCH --gres=gpu:H100:1                      
#SBATCH -t2:00:00                                   
#SBATCH -oReport-%j.out                       

module load anaconda3                               
conda activate mdl12-diffcsp

cd $HOME/scratch/DiffCSP

srun python diffcsp/run.py data=mp_20 expname=mp_20_train