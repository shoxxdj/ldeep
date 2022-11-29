# Build command: docker build -t ldeep .
# Execute with: docker run --rm ldeep $args

FROM python:3.8-slim-buster
RUN apt update && apt install krb5-config libkrb5-dev -y 
WORKDIR /ldeep
COPY . .
RUN pip install -r requirements.txt
RUN [ "python", "setup.py", "install" ]
ENTRYPOINT [ "ldeep" ]
