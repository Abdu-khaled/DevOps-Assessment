# DevOps-Assessment

## Task 1: File and Folder Management

- **Objective**: Create a directory structure for a new project.
  
**Command:**
```bash
mkdir project
mkdir project/src project/docs project/tests
touch project/src/main.py project/docs/README.md project/tests/test_main.py 
echo "This is a sample DevOps project for testing automation." > project/docs/README.md
tree project 
```

**Output:**  
![task1](./Screenshots/1.png)


## Setup environment and repo 

**Output:**  
![task1](./Screenshots/2.png)



## Task 2: Basic OS Configuration


- **Objective**: Configure the hostname of the Linux machine.
There are two way to change the hostname in the system one with `Reboot Required` two `No Reboot`

### Change Hostname `No Reboot`

1. Check Current Hostname
**Command:**
```bash
# we can use:
hostname 
hostnamectl # for more info in my system
```

2. Use set-hostname to Change the Hostname

**Command:**
```bash
hostnamectl set-hostname devops-junior
```

**Output:**  
![task1](./Screenshots/3.png)



### **Change Hostname `Reboot Required`**

1. Open /etc/hostname and Change the Hostname

**Command:**
```bash
sudo vim /etc/hostname
```

2. Open /etc/hosts and Change the Hostname

**Command:**
```bash
#The file /etc/hosts maps hostnames to IP addresses
sudo vim/etc/hosts
```

3. Reboot the System

**Command:**
```bash
sudo systemctl reboot
```

**Output:**  
![task1](./Screenshots/4.png)