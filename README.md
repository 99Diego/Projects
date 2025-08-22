# 📂 File Report Generator

A lightweight Bash script to generate reports of recently modified files in any directory.
It is especially useful for system administrators, DevOps engineers, or developers who need to monitor file changes efficiently.

---

## ✨ Features
- Lists files modified in the last **N days** (default: 7).
- Saves results into a report file (`reporte_<timestamp>.txt`).
- Customizable target directory.
- Lightweight and easy to use.

---

## 📦 Installation
Clone this repository and make the script executable before running it:

```bash
git clone https://github.com/99Diego/Projects.git
cd Projects
chmod +x scripts/reporte_archivos.sh
```

---

## 🚀 Usage
Run the script by passing the target directory and minimum file size in MB:

```bash
./scripts/reporte_archivos.sh /path/to/your/directory 10
```
Example: This will generate a report of all files larger than 10 MB modified in the last 7 days under /path/to/your/directory.

The output will be saved as: reporte_20250822_101523.txt

---

## Parameters
| Argument             | Description                                 | Default           |
| -------------------- | ------------------------------------------- | ----------------- |
| `/path/to/directory` | Directory to scan                           | Current directory |
| `min_size_MB`        | Minimum file size (in MB) to include        | 1 MB              |
| `days` *(optional)*  | Lookback period (in days) for modifications | 7 days            |

---

## Example Reports 
A sample generated report look like this:

```yaml
Report generated: 2025-08-22 10:15:23
Target directory: /home/user/Documents
Days: 7
Min size: 10 MB

Modified files:
- /home/user/Documents/project/data.csv (12 MB) – modified on 2025-08-20
- /home/user/Documents/project/app.log (15 MB) – modified on 2025-08-19
```

---

## Requirements
- Linux or macOS environment
- Bash (v4+ recommended)
- Standard Unix utilities (find, du, date)

---

## Contributing
Contributions are welcome!
Feel free to fork this repository and submit a pull request with improvements.



