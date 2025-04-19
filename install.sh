#!/bin/bash
set -e

echo "Updating pip..."
pip install --upgrade pip

echo "Installing pre-compiled dependencies first..."
pip install wheel setuptools

echo "Installing NumPy separately with fallbacks..."
pip install numpy==1.24.3 --prefer-binary || pip install numpy==1.24.2 --prefer-binary || pip install numpy==1.23.5 --prefer-binary

echo "Installing SciPy and scikit-learn..."
pip install scipy==1.10.1 --prefer-binary || pip install scipy==1.9.3 --prefer-binary 
pip install scikit-learn==1.0.2 --prefer-binary || pip install scikit-learn==1.0.1 --prefer-binary

echo "Installing PyTorch CPU versions..."
pip install torch==1.13.1+cpu torchvision==0.14.1+cpu -f https://download.pytorch.org/whl/cpu/torch_stable.html

echo "Installing remaining dependencies..."
pip install -r requirements-minimal.txt

echo "Installation completed successfully!" 