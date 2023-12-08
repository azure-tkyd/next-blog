FROM node:18

ENV TZ=Asia/Tokyo

WORKDIR /app
RUN mkdir blog
RUN chown -R node:node /app/blog

RUN npm install -g pnpm

EXPOSE 3001
ENV PORT 3001
ENV HOSTNAME "0.0.0.0"

USER node
WORKDIR /app/blog