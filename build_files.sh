echo "BUILD START"

# Activate the virtual environment
source mk/Scripts/activate

# Install dependencies from requirements.txt
pip install -r requirements.txt

# Run collectstatic command
python manage.py collectstatic --noinput --clear

# Deactivate the virtual environment
deactivate

echo "BUILD STOP"


