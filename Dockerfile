cd "C:\Users\hpata\Desktop\bot community\rigid-bot-northflank-main"

@"
FROM node:20-slim

WORKDIR /app

COPY package*.json ./
RUN npm ci --only=production

COPY . .

CMD ["node", "src/index.js"]
"@ | Out-File -FilePath Dockerfile -Encoding utf8