# File Report Generator

This project is a Bash script that generates a report of files inside a given directory, filtered by file size.  
It is useful for monitoring large files, cleaning up logs, or analyzing storage usage.

---

## 📌 Features
- Accepts a directory as input.
- Filters files by size (greater than N MB).
- Generates a timestamped report inside the `docs/` folder.
- Simple and lightweight (pure Bash + `find`).

---

## 🚀 Usage

### 1. Clone the repository
```bash
git clone https://github.com/YourUsername/file-report-generator.git
cd file-report-generator

