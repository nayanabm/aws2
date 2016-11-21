FROM abhivision/roboadvisor:f1
RUN git pull --rebase origin master
RUN pip install -r requirements.txt
RUN export DJANGO_SETTINGS_MODULE=app.setting_postgres
RUN npm install
RUN gulp
RUN python3  manage.py collectstatic --noinput -i admin
