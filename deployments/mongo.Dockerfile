FROM mongo
RUN usermod -u 1002 mongodb && groupmod -g 1002 mongodb
ADD deployments/mongo-init.js /docker-entrypoint-initdb.d/
