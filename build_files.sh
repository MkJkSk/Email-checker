echo "BUILD START"

./emailchecker/mk/Scripts/activate.bat


pip install -r requirements.txt


python manage.py collectstatic --noinput --clear


deactivate

echo "BUILD STOP"



