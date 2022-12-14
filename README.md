# Ansible Playground

This repository serves as a platform for getting started and
experimenting with Ansible.


## Developer Tools

There are two ways that you can install the developer tools on
your Raspberry Pi:

### Option 1 &ndash; Using the Bash script

```bash
bash <(curl -sL https://raw.githubusercontent.com/nicomiguelino/ansible-playground/main/install-devtools.sh)
```

### Option 2 &ndash; Using the Ansible Playbook YML file

Make sure that you have Ansible installed before running the following command:

```bash
curl -sL https://raw.githubusercontent.com/nicomiguelino/ansible-playground/main/install-devtools.yml > /tmp/install-devtools.yml
ansible-playbook install-devtools.yml
```
