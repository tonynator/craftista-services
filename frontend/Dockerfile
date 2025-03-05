FROM node:21 AS builder
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .


FROM node:21-alpine
WORKDIR /app

COPY --from=builder /app .

ENV NODE_ENV=production

RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

EXPOSE 3000

CMD ["node", "app.js"]
