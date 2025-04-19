#!/bin/bash
set -e

echo "=== DEBUGGING: Current directory and files ==="
pwd
ls -la

echo "=== DEBUGGING: Python environment ==="
which python
python --version
pip --version

echo "=== Updating pip ==="
pip install --upgrade pip

echo "=== Removing any existing requirements files from build cache ==="
find . -name "*.whl" -delete
rm -rf ~/.cache/pip

echo "=== Installing core dependencies first ==="
pip install wheel setuptools

echo "=== Installing NumPy (available version) ==="
pip install numpy==1.24.3

echo "=== Installing Scientific Packages ==="
pip install scipy==1.10.1
pip install scikit-learn==1.3.0

echo "=== Installing OpenCV (available version) ==="
pip install opencv-python-headless==4.11.0.86

echo "=== Installing PyTorch CPU version ==="
pip install torch==1.13.1+cpu torchvision==0.14.1+cpu -f https://download.pytorch.org/whl/cpu/torch_stable.html

echo "=== Installing Flask and web dependencies ==="
pip install Flask==2.0.1 Flask-SQLAlchemy==2.5.1 Werkzeug==2.0.1 Pillow==9.0.0 gunicorn==20.1.0 psycopg2-binary==2.9.3 redis==4.2.0 requests==2.26.0 PyYAML==6.0

echo "=== Installing Quantum libraries ==="
pip install qiskit==0.42.0 
pip install PennyLane==0.30.0

echo "=== DEBUGGING: Installed packages ==="
pip list

echo "=== Build completed successfully! ===" 