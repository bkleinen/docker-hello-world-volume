FROM alpine
RUN mkdir /app
COPY hello.txt /app
RUN apk add bash
CMD ["cat","/app/hello.txt"]
# CMD ["tail -f","/dev/null"]
