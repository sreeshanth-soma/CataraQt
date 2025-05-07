# CataraQt: Quantum-Powered Cataract Detection

A modern web application that leverages quantum-classical hybrid machine learning to detect cataracts in eye images with high accuracy. The project combines the power of quantum computing with traditional computer vision techniques to provide advanced eye disease detection.

## 🌟 Features

- **Quantum-Classical Hybrid Model**: Utilizes quantum computing principles for enhanced cataract detection
- **Modern Web Interface**: Responsive design with dark/light mode support
- **Visualization Tools**: Provides heatmaps and edge detection to help understand detection results
- **User Authentication**: Secure login/registration system with profile management
- **Analysis History**: Track all previous analyses with timestamps and results
- **Personalized Recommendations**: Provides custom health recommendations based on analysis results

## 📋 Prerequisites

- Python 3.8+
- Node.js and npm (only for TailwindCSS compilation)
- Git

## 🚀 Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/sreeshanth-soma/CataraQt.git
   cd CataraQt
   ```

2. **Set up a virtual environment**:

   ```bash
   python -m venv venv_new
   source venv_new/bin/activate  # On Windows: venv_new\Scripts\activate
   ```

3. **Install Python dependencies**:

   ```bash
   pip install -r requirements.txt
   ```

4. **Initialize the database**:

   ```bash
   python direct_db_fix.py
   ```

5. **(Optional) Only if modifying TailwindCSS styles**:
   ```bash
   npm install
   ```

## 🏃‍♂️ Running the Application

1. **Start the Flask application**:

   ```bash
   python app.py
   ```

2. **Access the application**:
   Open your browser and navigate to http://localhost:5000

## 🧪 Using the Application

1. **Create an account** or log in if you already have one
2. **Upload an eye image** on the Analysis page
3. **View results** including prediction, confidence score, and visualizations
4. **Check your history** to review past analyses
5. **View your profile** to see statistics about your eye health

## 📊 Technology Stack

- **Primary Backend**: Python with Flask web framework
- **Database**: SQLite with SQLAlchemy ORM
- **Machine Learning**: PyTorch, OpenCV
- **Quantum Computing**: Qiskit, Quantum Circuit Simulation
- **Frontend**: HTML with Jinja2 templates, JavaScript
- **CSS Framework**: TailwindCSS (pre-compiled, doesn't require Node.js at runtime)

## 📁 Project Structure

```
CataraQt/
├── app.py                         # Main Flask application
├── quantum_eye_disease_classifier.py  # Quantum-classical model implementation
├── best_model.pth                 # Trained model weights
├── static/                        # Static assets
│   ├── css/                       # Compiled CSS
│   ├── js/                        # JavaScript files
│   └── uploads/                   # User uploaded images
├── templates/                     # HTML templates
├── Datasets/                      # Training and test datasets
└── venv_new/                      # Virtual environment
```

## 🛠️ Advanced Configuration

- Adjust detection sensitivity in `app.py` by modifying the `cataract_threshold` variable
- Customize visualization settings in the analyze route handler
- Modify quantum circuit parameters in `quantum_eye_disease_classifier.py` for fine-tuning

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📧 Contact

For questions or feedback about CataraQt, please [open an issue](https://github.com/sreeshanth-soma/CataraQt/issues) on the GitHub repository.

---

_Note: This project was developed for the Womanium Quantum Hackathon/Competition and demonstrates the potential applications of quantum computing in healthcare._
