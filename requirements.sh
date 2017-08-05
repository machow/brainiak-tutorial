apt-get update \
    && apt-get install -y build-essential libgomp1 libmpich-dev mpich python3-tk \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

pip3 install brainiak nilearn

mkdir data

git clone https://github.com/IntelPNI/brainiak.git tmp_brainiak

mv tmp_brainiak/examples data
rm -rf tmp_brainiak
