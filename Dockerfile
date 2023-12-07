FROM postgres:13-alpine

# Copy init.sql script into Docker image
COPY init.sql /docker-entrypoint-initdb.d/init.sql
