
# echo BUILD START

# cd C:\Users\Lenovo\OneDrive\Desktop\Local_Pr\emailchecker\mk\Scripts\activate.bat

# python -m pip install -r requirements.txt
# python manage.py collectstatic --noinput --clear

# echo BUILD STOP


@echo off
echo BUILD START

cd /D "C:\Users\Lenovo\OneDrive\Desktop\Local_Pr\emailchecker\mk"

if exist "Scripts\activate.bat" (
    call Scripts\activate.bat
) else (
    echo Unable to find the virtual environment activation script.
    exit /b 1
)

python3.9.0 -m pip install -r requirements.txt
python3.9.0 manage.py collectstatic --noinput --clear

echo BUILD STOP
