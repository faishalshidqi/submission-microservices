# mengunduh base image node versi 14
FROM node:14
# mengatur working directory menjadi /app
WORKDIR /app
# menyalin berkas dari current working directory host
# ke current working directory container
COPY . .
# mengatur nilai environment variables
ENV NODE_ENV=production DB_HOST=item-db
# menjalankan npm install untuk menginstal dependensi
# dan npm run build untuk melakukan build terhadap item-app
RUN npm install --production --unsafe-perm && npm run build
# mengekspos aplikasi melalui port 8080 container
EXPOSE 8080
# menjalankan aplikasi
CMD ["npm", "start"]
