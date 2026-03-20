# About this repo
This is a fast, updated version of the classic [Sublist3r](https://github.com/aboul3la/Sublist3r). This repository resolves critical compatibility issues with **Python 3.12+** and includes automation for batch-processing multiple domains.

## Key Improvements
* **Python 3.12+ Compatibility:** Fixed `SyntaxWarning` errors by converting all regex patterns to raw strings.
* **DNSdumpster Fix:** Resolved `IndexError` crashes caused by upstream changes in CSRF token delivery.
* **Batch Automation:** Included a native bash wrapper for high-volume enumeration.

## Quick Start

### 1. Installation
```bash
# Clone the repository
git clone https://github.com/yourusername/Sublist3r-Modernized.git
cd Sublist3r-Modernized

# Setup virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt
```

### 2. Single Domain Usage
```bash
python sublist3r.py -d google.com
```

### 3. Batch Scanning (The `scan.sh` Method)
Create a file (e.g., `targets.txt`) with one domain per line, then run:
```bash
chmod +x multi_domain_scan.sh
./multi_domain_scan.sh targets.txt
```
*Results are automatically saved to the `outputs/` directory.*

## Project Structure
* `sublist3r.py` - The core engine (Fixed & Optimized).
* `multi_domain_scan.sh` - Automation script for multi-domain targets.
* `requirements.txt` - Minimal dependencies for Python 3.14.
* `LICENSE` - GNU General Public License v2.0.

## Credits & License
This tool is a modified distribution based on the [original Sublist3r](https://github.com/aboul3la/Sublist3r) by [**Ahmed Aboul-Ela**](https://github.com/aboul3la). In accordance with the **GNU GPL v2.0**, this modernized version remains open-source and free to modify.

