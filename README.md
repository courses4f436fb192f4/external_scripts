## Task

Тестовое задание:  

Написать один bash скрипт, который установит nginx. Создать сайт под nginx, который должен находиться на 80 порту и содержать одну html страницу с текстом “Hello World!” - все силами bash-скрипта . Скрипт должен запускаться под пользователем, отличным от root. Отдельно нужно указать, какие минимально возможные права нужно дать пользователю для выполнения скрипта.
Server: Ubuntu
Результат разместить на github.

## Geting started
This script installing a nginx server and shows "hello world" page.
## Instalation

Configure an environment as root
```sh
apt install sudo git
useradd -m -s /bin/bash userAdm
passwd userAdm

```

Edit a sudoers file
```sh
# Host alias specification
Host_Alias  ALLOWEDHOSTS = ALL

# User alias specification
User_Alias      MYADMINS = userAdm

# Cmnd alias specification
Cmnd_Alias PKGMGMT = /home/userAdm/external_scripts/nginx_install.sh nginx

# User privilege specification
MYADMINS ALLOWEDHOSTS = NOPASSWD: PKGMGMT

```

```sh
git clone https://github.com/courses4f436fb192f4/external_scripts.git /home/userAdm/external_scripts/
chown root:root /home/userAdm/external_scripts/
sudo chmod 655 /home/userAdm/external_scripts/
chmod u+x /home/userAdm/external_scripts/nginx_install.sh
```
Reboot

## Usage
Login as "userAdm"

Run script from user "userAdm"
```sh
sudo ./nginx_install.sh nginx
```
