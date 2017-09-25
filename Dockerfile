FROM fedora:latest
RUN dnf update -y
RUN python3 -m pip install flask
EXPOSE 5000
CMD["python3","json-server.py","read_json.py","write_json.py","aws-lamba.py"]

