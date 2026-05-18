FROM node:22

WORKDIR /app

RUN npm install -g pnpm

COPY . .

RUN pnpm config set registry https://registry.npmjs.org/
RUN pnpm install --no-frozen-lockfile

EXPOSE 3000

CMD ["pnpm","start"]
