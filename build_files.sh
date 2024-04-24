# echo "BUILD START"

#  \emailchecker\mk\Scripts\activate.bat


# python3.9 -m pip install -r requirements.txt 
# python3.9 manage.py collectstatic --noinput --clear
 
#  deactivate

# echo "BUILD STOP"



@echo off
echo BUILD START

rem Activate virtual environment
call emailchecker\mk\Scripts\activate.bat

rem Install requirements
python -m pip install -r requirements.txt

rem Collect static files
python manage.py collectstatic --noinput --clear

rem Deactivate virtual environment
deactivate

echo BUILD STOP
