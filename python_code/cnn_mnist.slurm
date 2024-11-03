#!/bin/bash
#SBATCH --job-name=cnn_mnist         # Job name
#SBATCH --output=cnn_mnist.out       # Output file
#SBATCH --error=cnn_mnist.err        # Error file
#SBATCH --time=00:30:00              # Time limit (hh:mm:ss)
#SBATCH --partition=gpu              # Partition name
#SBATCH --gres=gpu:1                 # Request one GPU
#SBATCH --mem=16G                    # Memory limit
#SBATCH --cpus-per-task=4            # Number of CPU cores per task
#SBATCH --mail-type=ALL              # Notifications for job done & fail
#SBATCH --mail-user=your_email@example.com  # Where to send mail

# Load required modules
module load python/3.8  # Adjust based on the available Python module
module load cuda/11.2   # Adjust based on the available CUDA module if needed

# Activate the virtual environment (if applicable)
# source ~/myenv/bin/activate

# Run the Python script
python cnn_mnist.py
