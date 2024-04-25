
# echo BUILD START

# cd C:\Users\Lenovo\OneDrive\Desktop\Local_Pr\emailchecker\mk\Scripts\activate.bat

# python -m pip install -r requirements.txt
# python manage.py collectstatic --noinput --clear

# echo BUILD STOP


echo BUILD START

cd C:\Users\Lenovo\OneDrive\Desktop\Local_Pr\emailchecker\mk

.\Scripts\activate.bat

python -m pip install -r requirements.txt
python manage.py collectstatic --noinput --clear

echo BUILD STOP
