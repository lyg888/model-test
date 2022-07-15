FROM --platform=linux/amd64 python:3.9

# Creating Application Source Code Directory
RUN mkdir -p /model

ADD . /model

# Setting Home Directory for containers
WORKDIR /model

# Installing python dependencies
RUN pip install -r requirements.txt

# Running Python Application
# CMD ["python", "src/model.py"]