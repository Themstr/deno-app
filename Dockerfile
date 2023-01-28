FROM denoland/deno:alpine

WORKDIR /app

COPY . .

RUN deno cache server.ts

EXPOSE 8000

CMD ["deno", "run", "--allow-net", "server.ts"]
