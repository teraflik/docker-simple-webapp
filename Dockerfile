# Use an official Python runtime as a parent image
FROM python:3.7-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the required files into the container at /app
COPY requirements.txt app.py /app/

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Import data into mariadb-server and run app.py when the container launches
#RUN apk add mariadb-client
#COPY flask_db.sql bootstrap.sh /app/
#RUN chmod a+x /app/bootstrap.sh
#ENTRYPOINT /app/bootstrap.sh

# Now data resides in volume, so use CMD to just launch
CMD ["python3", "app.py"]