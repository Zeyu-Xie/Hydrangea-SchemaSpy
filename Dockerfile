FROM openjdk:17-slim

WORKDIR /workdir

# Install dependencies in a single layer, then clean up to reduce image size
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends curl graphviz unzip && \
    rm -rf /var/lib/apt/lists/*

# Download SchemaSpy and PostgreSQL JDBC driver
RUN curl -L -o schemaspy.jar https://github.com/schemaspy/schemaspy/releases/download/v6.2.4/schemaspy-6.2.4.jar && \
    curl -L -o postgresql.jar https://jdbc.postgresql.org/download/postgresql-42.7.3.jar

# Set default command
CMD ["bash", "../app/main.sh"]
