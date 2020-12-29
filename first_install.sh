sudo apt update && sudo apt upgrade -y
sudo apt install language-pack-ja-base language-pack-ja ibus-mozc -y
sudo update-locale LANG=ja_JP.UTF-8
. ~/.bashrc
exec $SHELL -l
sudo apt install -y manpages-ja manpages-ja-dev
sudo dpkg-reconfigure tzdata

git config --global user.name "Shigeyuki MAKINO(nandymak)"
git config --global user.email makino@nandymak.jp

sudo apt install -y cargo
sudo cargo install exa
sudo mv /root/.cargo/bin/exa /usr/local/bin
sudo cargo install --locked bat
sudo mv /root/.cargo/bin/bat /usr/local/bin

echo "alias ls='exa'" >> ~/.bashrc
echo "alias ll='exa -ahl --git'" >> ~/.bashrc
echo "alias cat='bat'" >> ~/.bashrc

. ~/.bashrc
exec $SHELL -l

