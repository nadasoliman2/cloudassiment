FROM python
WORKDIR /app
COPY stopword.py /app/
COPY random_paragraphs.txt /app/
RUN pip install nltk
RUN python -m nltk.downloader stopwords punkt
CMD ["python", "stopword.py"]