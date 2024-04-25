@echo off
echo BUILD START

call C:\Users\Lenovo\OneDrive\Desktop\Local_Pr\emailchecker\mk\Scripts\activate.bat

python -m pip install -r requirements.txt
python manage.py collectstatic --noinput --clear

echo BUILD STOP

