curl https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash
nvm install 16.13.2
nvm activate 16.13.2
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh | bash
bash
conda create --name tao_env python=3.10
conda activate tao_env
pip install torch==1.10.1+cu113 torchvision==0.11.2+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html
pip install matplotlib pandas plotly transformers jupyter=3.2.5
git clone https://github.com/redwoodresearch/mlab &

git clone https://github.com/redwoodresearch/unity & 

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh
gh auth login 
gh auth login --with-token < ~/gh_token.txt