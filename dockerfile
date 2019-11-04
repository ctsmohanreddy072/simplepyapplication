FROM python

# Create app directory
WORKDIR /app

# Install app dependencies
COPY requirements.txt ./

RUN pip install -r requirements.txt

# Bundle app source
COPY *.py /app

#EXPOSE 8080
CMD [ "python", "application.py" ]
