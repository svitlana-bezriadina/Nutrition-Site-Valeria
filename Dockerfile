# Этап 1: Установка зависимостей и сборка проекта
FROM node:20-alpine AS build-stage
WORKDIR /app
# Копируем файлы с зависимостями
COPY package*.json ./
RUN npm install
# Копируем весь остальной код и собираем проект
COPY . .
RUN npm run build

# Этап 2: Настройка легкого сервера для раздачи статики
FROM nginx:stable-alpine AS production-stage
# Копируем собранный проект из первого этапа в папку Nginx
COPY --from=build-stage /app/dist /usr/share/nginx/html
# Указываем порт, который будет слушать сервер (Render сам его подхватит)
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]