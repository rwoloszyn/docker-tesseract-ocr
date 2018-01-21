FROM alpine:3.7

MAINTAINER Rafal Woloszyn<rafal@debugduckdesign.com>

RUN apk add --update --no-cache --virtual ca-certificates \
    wget-dependencies \
    openssl \
    tesseract-ocr && \
	wget -q -P /usr/share/tessdata/ https://github.com/tesseract-ocr/tessdata/raw/master/eng.cube.bigrams && \
    wget -q -P /usr/share/tessdata/ https://github.com/tesseract-ocr/tessdata/raw/master/eng.cube.fold && \
    wget -q -P /usr/share/tessdata/ https://github.com/tesseract-ocr/tessdata/raw/master/eng.cube.lm && \
    wget -q -P /usr/share/tessdata/ https://github.com/tesseract-ocr/tessdata/raw/master/eng.cube.nn && \
    wget -q -P /usr/share/tessdata/ https://github.com/tesseract-ocr/tessdata/raw/master/eng.cube.params && \
    wget -q -P /usr/share/tessdata/ https://github.com/tesseract-ocr/tessdata/raw/master/eng.cube.size && \
    wget -q -P /usr/share/tessdata/ https://github.com/tesseract-ocr/tessdata/raw/master/eng.cube.word-freq && \
    wget -q -P /usr/share/tessdata/ https://github.com/tesseract-ocr/tessdata/raw/master/eng.tesseract_cube.nn && \
    wget -q -P /usr/share/tessdata/ https://github.com/tesseract-ocr/tessdata/raw/master/eng.traineddata && \
    # polish
    wget -q -P /usr/share/tessdata/ https://github.com/tesseract-ocr/tessdata/raw/master/pol.traineddata && \

RUN apk del wget-dependencies