cd /home/ubuntu
svn co --username <NETZ-USERNAME> --password <NETZ-PASSWORD> --non-interactive https://svn.inf.ethz.ch/svn/systems/SPCA2017/trunk/submissions/<NETZ-USERNAME>
# fixing owner of svn folder
sudo chown -R ubuntu:ubuntu /home/ubuntu/
