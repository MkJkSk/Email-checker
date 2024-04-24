echo "BUILD START"

# Activate the virtual environment (assuming it's in the mk/Scripts directory)
source emailchecker/mk/Scripts/activate.bat

# Install dependencies from requirements.txt
pip install -r requirements.txt

# Run collectstatic command
python manage.py collectstatic --noinput --clear

# Deactivate the virtual environment
deactivate

echo "BUILD STOP"


# echo "BUILD START"

# # Activate the virtual environment
# source mk/Scripts/activate

# # Install dependencies from requirements.txt
# mk/Scripts/pip install -r requirements.txt

# # Run collectstatic command
# mk/Scripts/python manage.py collectstatic --noinput --clear

# # Deactivate the virtual environment
# deactivate

# echo "BUILD STOP"

