#* This is a linux machine with python installed and its light weight
FROM python:3.8-bookworm

#* To ensure that python output is sent straight to the terminal without being first buffered.
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

#* this creates a working directory
WORKDIR /app

#* this copies the reqirements.txt file 
COPY requirements.txt .

#* This runs the following command in the requirements.txt file
RUN pip install --upgrade pip setuptools
RUN test -f requirements.txt && pip install --no-cache-dir -r requirements.txt || true

#* Install any dependencies
RUN rm -rf /private/tmp/*
RUN pip install --no-cache-dir pycparser
RUN pip install --no-cache-dir docutils
RUN pip install --no-cache-dir django
RUN pip install --no-cache-dir gunicorn



#* this copies the application to the app directory
COPY . .

EXPOSE 8000

#* this runs the application 
CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]

#* This can be used for production
#CMD ["gunicorn", "--bind", "0.0.0.0:8000", "core.wsgi:application"]


#*Note: The port makes it accessible outside the application




