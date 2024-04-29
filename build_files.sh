
# echo BUILD START

# cd C:\Users\Lenovo\OneDrive\Desktop\Local_Pr\emailchecker\mk\Scripts\activate.bat

# python -m pip install -r requirements.txt
# python manage.py collectstatic --noinput --clear

# echo BUILD STOP



echo BUILD START

# Activate the virtual environment
'mk/Scripts/activate/python.exe'  # for Windows, use `mk\Scripts\activate`

# Install requirements
python3.9 -m pip install -r requirements.txt

# Collect static files
python3.9 manage.py collectstatic --noinput --clear

echo BUILD STOP

