#!/bin/bash
#SBATCH --job-name=DiffCSPmp20                           
#SBATCH --ntasks-per-node=4    
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=16G                       
#SBATCH --gres=gpu:H100:1                      
#SBATCH --time=16:00:00                                   
#SBATCH --output=slurm/Report-%j.out                       

module load anaconda3                
               
conda activate mdl12-diffcsp

cd $HOME/scratch/DiffCSP

srun python scripts/evaluate.py --model_path /home/hice1/spark868/scratch/DiffCSP/hydra_jobs/singlerun/2024-10-10/mp_20_train --dataset mp_20