# ServerPerformanceStat

ServerPerformanceStat is a Bash script designed to monitor CPU and memory usage on a Linux server. It provides real-time statistics on system performance, helping administrators analyze resource utilization efficiently.

## 1. How to Run This Project

### 1.1 Download or Clone the Repository
To get started, you need to download the repository or clone it to your local machine using the following command:
```sh
 git clone https://github.com/DaviCodex/ServerPerformanceStat.git
```

### 1.2 Open the Project Folder
Navigate to the project directory:
```sh
cd ServerPerformanceStat
```

### 1.3 Grant Execution Permissions
Before running the script, ensure it has the necessary execution permissions:
```sh
chmod +x server_status.sh
```

### 1.4 Execute the Script
Run the script to monitor system performance:
```sh
./server_stat.sh
```

## 2. Features
- Displays real-time CPU usage.
- Shows memory usage statistics.
- Lists top processes consuming resources.
- Outputs formatted data for easy readability.

## 3. Requirements
- Linux-based operating system (Ubuntu, Debian, CentOS, etc.).
- `top`, `awk`, and `free` commands available.
- Bash shell environment.

## 4. Example Output
```sh
The CPU % in use is: 5.9 %
 
 
The memory in use is: 162 MB and in percentage: 17.00 %
 
 
The memory in use is: 949 MB and in percentage: 83.00 %
 
 
The disk in use is: 6.1G and the disk free is: 1.9G
 
 
The top 5 processes by CPU use are: 
 
 PID  %CPU PROCESS    
1092  0.0   xyz
2330  0.0   xyz
1     0.0   xyz
1932  0.0   xyz
616789 0.0  xyz
 
 
The top 5 processes by MEM use are: 
 
 PID  %MEM PROCESS    
1092  7.1   xyz
2330  1.8   xyz
1     1.8   xyz
1932  1.4   xyz
616789 1.4  xyz
```

## 5. Contributing
Feel free to contribute by submitting issues or pull requests. Any enhancements, bug fixes, or feature additions are welcome!

## 6. License
This project is licensed under the MIT License. See `LICENSE` for more details.

## 7. Contact
For any questions or support, open an issue on GitHub.

## 8. Project URL
```
https://roadmap.sh/projects/server-stats
```




