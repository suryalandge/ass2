FROM python :3.10.14-alphine
WORKDIR /code
COPY  ./requirement.txt /code/requirement.txt
RUN pip install -r /code/requirement.txt

COPY ./app/code/app

CMD ["fastapi","run","app/main.py","--port","80"]