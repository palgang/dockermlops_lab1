FROM python:3.7-stretch

ENV VIRTUAL_ENV=~/.dockermlops_lab1

RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

COPY requirements.txt /tmp/requirements.txt


RUN pip install --upgrade pip
RUN pip install wheel
RUN pip install -r /tmp/requirements.txt

EXPOSE 8888

CMD ["jupyter","lab"]