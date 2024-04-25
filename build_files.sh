
# echo BUILD START

# cd C:\Users\Lenovo\OneDrive\Desktop\Local_Pr\emailchecker\mk\Scripts\activate.bat

# python -m pip install -r requirements.txt
# python manage.py collectstatic --noinput --clear

# echo BUILD STOP


echo BUILD START

cd C:\Users\Lenovo\OneDrive\Desktop\Local_Pr\emailchecker\mk

.\Scripts\activate.bat

python3.9.0 -m pip install -r requirements.txt
python3.9.0 manage.py collectstatic --noinput --clear

echo BUILD STOP
