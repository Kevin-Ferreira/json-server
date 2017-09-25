FROM fedora:latest
RUN dnf update -y
RUN python3 -m pip install Flask flask_script
WORKDIR /home/work
COPY json-server.py /home/work
EXPOSE 5000
CMD["python3","json-server.py"]

