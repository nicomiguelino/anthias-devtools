# Anthias Devtools

This repository contains a collection of development tools that can be used together with
[Anthias][1] for open-source development.


## Developer Tools for Raspberry Pi Devices

### Installation

Install `snapd` first, then do a reboot.

```bash
sudo apt -y update && \
sudo apt -y install snapd && \
sudo reboot
```

After reboot, run the following:

```bash
bash <(curl -sL https://raw.githubusercontent.com/nicomiguelino/anthias-devtools/main/install-devtools.sh)
```

### Dockerized Development Environment

```bash
docker compose build && \
docker compose up -d && \
docker compose exec playground bash
```

```bash
# Run the following inside the `playground` container.
./install-devtools.sh --mode=dev
```



[1]: https://github.com/Screenly/Anthias
