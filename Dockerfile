FROM fedora:latest
RUN dnf update -y
RUN python3 -m pip install Flask flask_script
WORKDIR /
COPY json-server.py /
EXPOSE 5000
CMD ["python3","json-server.py","runserver"]

