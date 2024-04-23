# echo "BUILD START"
# python3.9 -m pip install -r requirements.txt 
# python3.9 manage.py collectstatic --noinput --clear
# echo "BUILD STOP"



echo "BUILD START"

# Activate the virtual environment
source /path/to/your/virtualenv/bin/activate

# Install dependencies from requirements.txt
pip install -r requirements.txt

# Run collectstatic command
python manage.py collectstatic --noinput --clear

# Deactivate the virtual environment
deactivate

echo "BUILD STOP"
