## WSL 2

Open PowerShell as Administrator:

```PowerShell
PS S:\> start-process PowerShell -verb runas
```

Administrator PowerShell:

```PowerShell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

### Upgrade to WSL 2

To update to WSL 2, you must meet the following criteria:

- Running Windows 10, updated to version 2004, **Build 19041** or higher.
- Check your Windows version by selecting the <kbd>⊞ Win</kbd> + <kbd>R</kbd>, type `winver`, select **OK**. (Or enter the ver command in Windows Command Prompt). Please update to the latest Windows version if your build is lower than 19041. Get Windows Update Assistant.

Enable the 'Virtual Machine Platform' optional component
Before installing WSL 2, you must enable the "Virtual Machine Platform" optional feature.

Open PowerShell as Administrator and run:

```PowerShell
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

**RESTART** your machine to complete the WSL install and update to WSL 2.

### Set WSL 2 as your default version

Open PowerShell as Administrator and run this command to set WSL 2 as the default version when installing a new Linux distribution:

```PowerShell
wsl --set-default-version 2
```

You might see an error "ox1bc" or this message after running that command: WSL 2 requires an update to its kernel component. For information please visit https://aka.ms/wsl2kernel. Please follow the link (https://aka.ms/wsl2kernel) and install the MSI from that page on our documentation to install a Linux kernel on your machine for WSL 2 to use. Once you have the kernel installed, please run the command again and it should complete successfully without showing the message.

### Update Packages

```sh
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install pass
sudo apt-get install keychain
sudo apt-get install dirmngr
```

### zsh

```sh
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### thefuck

- Install Python3

  ```sh
  sudo apt install python3-dev python3-pip python3-setuptools
  ```

- Install `thefuck`

  ```sh
  pip3 install thefuck --user
  ```


### nvm

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
```

### ssh

- copy keys
- set access rights

  ```sh
  chmod 600 /home/cti_wsl/.ssh/id_rsa
  ```

- test connection

  ```sh
  ssh -T git@github.com
  ```

## Rancher / Docker

- Install Rancher Desktop
- Enable WSL installation from `Settings` -> `WSL`
- Restart Rancher Desktop and WSL
- Add kubeConfigs to Rancher Desktop config
- In WSL

  ```sh
  sudo groupadd docker
  sudo adduser $USER docker
  sudo chown root:docker /var/run/docker.sock
  sudo chmod g+w /var/run/docker.sock
  newgrp docker
  ```