# dotfiles

Managed by [chezmoi](https://www.chezmoi.io/)

## Prerequisites

Before initialization, you need to set up the **Bitwarden CLI (`bw`)** to manage secrets.

### 1. Install Bitwarden CLI
If you don't have `bw` installed, you can install it to your local binary directory:

```bash
# Ensure the destination directory exists
mkdir -p ~/bin

# Install unzip and download/extract the Bitwarden CLI
sudo apt install unzip -y
curl -L -o bw.zip https://github.com/bitwarden/clients/releases/download/cli-v2026.2.0/bw-linux-2026.2.0.zip
unzip -o bw.zip -d ~/bin
rm bw.zip
chmod +x ~/bin/bw

# Apply the PATH change immediately
source ~/.profile
```

### 2. Bitwarden Authentication

Log in to your Bitwarden account and unlock the vault:

``` bash
bw login
export BW_SESSION=$(bw unlock --raw)
```

This dotfiles repository uses `bitwardenFields` to dynamically retrieve GitHub tokens and other secrets during `chezmoi apply`.

## Usage

Run the following one-liner to install `chezmoi`, initialize, and apply your dotfiles:

``` bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply kaznag
```
