FROM python:2

LABEL "com.github.actions.name"="Sync to DigitalOcean Space"
LABEL "com.github.actions.description"="Sync from a GitHub repo to Digital Ocean apce"
LABEL "com.github.actions.icon"="hash"
LABEL "com.github.actions.color"="white"

LABEL version="1.0.0"
LABEL repository="http://github.com/mlent/do-spaces-github-action"
LABEL homepage="http://github.com/mlent/do-spaces-github-action"
LABEL maintainer="Monica Lent <lent.monica@gmail.com>"

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/s3tools/s3cmd /tmp/s3cmd
RUN cd /tmp/s3cmd
RUN ls
RUN python setup.py install
RUN cd $GITHUB_WORKSPACE
RUN ls

ADD upload.sh /upload.sh
ENTRYPOINT ["/upload.sh"]
