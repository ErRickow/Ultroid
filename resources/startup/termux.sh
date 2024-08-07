printf "Updating System..\n\n"
pkg update -y
apt update
apt upgrade -y

python_not_installed="$(python -c 'exit()')"

# Install Python if n0t installed..
if [ python_not_installed ]
then
    printf "Menginstall Python..\nMungkin menguras banyak waktu...\n"
    pkg install python3 -y
fi

printf "*bim salabim...*"
pip install -q colorama

printf "Running up Installation tool.\n"
python resources/startup/_termux.py
