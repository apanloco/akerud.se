FROM nginx:alpine

# modify nginx to start server on 8080:
# https://stackoverflow.com/a/57747905/592463

COPY index.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf
COPY assets /usr/share/nginx/html/assets

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

