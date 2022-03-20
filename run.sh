#####################Settings####################

STARTUP_PYTHON_SCRIPT="main.py"

ModulesToInstall="Flask" # Use spaces to separate, leave blank for no modules
ModulesToUninstall="" # Use spaces to separate, leave blank for no modules

#################################################










if [[ $ModulesToInstall != "" ]]; then
	python3 -m pip install --no-warn-script-location $ModulesToInstall 
fi

if [[ $ModulesToUninstall != "" ]]; then
	python3 -m pip uninstall -y $ModulesToUninstall
fi

# print the logo
echo "=========================================="
echo "Mollomm1 Python 3.9 For Cys Nodejs Servers"
echo "=================Settting================="
echo "Starting : $STARTUP_PYTHON_SCRIPT as main script"
echo "Modules To Install/Update : $ModulesToInstall"
echo "Modules to uninstall : $ModulesToUninstall"
echo "=========================================="

python3 $STARTUP_PYTHON_SCRIPT
