#!/bin/bash
#SBATCH --job-name=DiffCSPmp20                           
#SBATCH --ntasks-per-node=4    
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=16G                       
#SBATCH --gres=gpu:H100:1                      
#SBATCH -t5:00:00                                   
#SBATCH -oReport-%j.out                       

module load anaconda3                
               
conda activate mdl12-diffcsp

cd $HOME/scratch/DiffCSP

srun python diffcsp/run.py data=mp_20 expname=mp_20_train