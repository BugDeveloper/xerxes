#cloud-config

runcmd:
  - sudo add-apt-repository ppa:deadsnakes/ppa
  - sudo apt-get update
  - apt-get install -y git
  - apt-get install -y python-pip
  - git clone https://github.com/BugDeveloper/xerxes /home/xerxes
  - pip install -r /home/xerxes/requirements.txt
  - gcc home/xerxes/xerxes.c -o home/xerxes/xerxes
  - python3 home/xerxes/xerxes_do_manager.py
