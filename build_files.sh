echo "BUILD START"
# source /vercel/path0/.venv/bin/activate 
pip install django
python3.9 -m pip install -r requirements.txt 
python3.9 manage.py collectstatic --noinput --clear
echo "BUILD STOP"



