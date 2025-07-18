# Use latest Python 3 base image
FROM python:3.8-buster

LABEL version="1.0.0"
LABEL maintainer="that-efinz@outlook.com"

# Add python code
ADD create_pyramid.py /

# Default command
CMD ["python", "./create_pyramid.py"]