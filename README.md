# Vagrant VM for ETHZ Systems Programming and Computer Architecture course
This simple setup script aims at automatically installing all needed programs for the Systems Programming and Computer Architecture course.  
  
## Requirements
This should work on Windows, Mac as well as Linux, it was so far only tested on Linux! If you run it on a Windows or Mac machine, please let me know at hello@pascalwacker.ch, if you run in any problems, you can also contact me there!  
### Software you need to install 
- Vagrant (https://www.vagrantup.com/)
- VirtualBox (https://www.virtualbox.org/)
That's all!  

## How it works
VirtualBox will be our Hypervisor, running a VM with Ubuntu 16.04 LTS, 32bit. We could set this VM up by hand, install all the tools and be happy with it, or we're lazy and use Vagrant to automatically manage the VM for us!  

### First Run
1) Before you run it the first time, you need to edit the file called `svn.sh` in said file, you need to replace `<NETZ-USERNAME>` with your NETZ username and `<NETZ-PASSWORD>` with your NETZ password. Otherwise the initialisation of SVN will fail!
2) Continue like a normal VM start

### Start the VM
1) simply navigate to the folder by CLI (on Linux/Mac called `Terminal`, on Windows called `CMD`), we'll assume in the future it's located at /home/pascal/VM/SysProg
2) run the command `vagrant up`
If the VM isn't created, this will download the Ubuntu image and create the VM for you!

### Get the VM status
1) Navigate to the folder by CLI (on Linux: `cd /home/pascal/VM/SysProg`)
2) run the command `vagrant status`
This will tell you in what state the VM is

### Access the VM
1) Navigate to the folder by CLI
2) If the VM isn't running, call `vagrant up` first, if it's running already skip this step
3) run the command `vagrant ssh`
You'll get a Terminal to the Ubuntu VM. The current folder will be your home folder `/home/ubuntu`. The User will be `ubuntu`.  
There will be a folder `/home/ubuntu/<NETZ-USERNAME>` in this folder the SVN is initialized and you can just work in it!

### Shut down the VM
1) if you are inside the VM, exit it by running the command `exit`, if you are on your computer, navigate to the folder by CLI
2) run the command `vagrant halt`

### Destroy the VM
1) if you are inside the VM, exit it by running the command `exit`, if you are on your computer, navigate to the folder by CLI
2) run the command `vagrant destroy`
3) confirm the destroy by typing y
Once you destroyed the VM, you can create a new one by running `vagrant up`
