

echo "BUILD START"
python3.9 -m pip install -r requirements.txt
python3.9 manage.py collectstatic --noinput --clear

python manage.py migrate --database=default
python manage.py migrate --database=mysql

echo "BUILD END"