FROM alpine:3.19

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app

COPY app.sh .

RUN chmod +x app.sh && chown -R appuser:appgroup /app

USER appuser

ENTRYPOINT ["/app/app.sh"]
