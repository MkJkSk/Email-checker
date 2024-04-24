echo "BUILD START"

 \emailchecker\mk\Scripts\activate.bat


python3.9 -m pip install -r requirements.txt 
python3.9 manage.py collectstatic --noinput --clear
 
 deactivate

echo "BUILD STOP"



