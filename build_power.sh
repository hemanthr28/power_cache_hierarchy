cd ../gem5_workspace/
python3 -m venv ./gem5env
source gem5env/bin/activate
pip install scons
cd gem5/
scons build/POWER/gem5.opt -j 8