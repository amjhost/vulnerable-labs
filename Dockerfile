# Base image
FROM ubuntu:latest

# Update and install necessary packages
RUN apt-get update && \
    apt-get install -y wget curl git python3 python3-pip npm

# Install vulnerable applications
RUN git clone https://github.com/OWASP/NodeGoat.git /opt/nodegoat && \
    git clone https://github.com/bkimminich/juice-shop.git /opt/juice-shop && \
    git clone https://github.com/WebGoat/WebGoat.git /opt/webgoat && \
    git clone https://github.com/digininja/DVWA.git /opt/dvwa && \
    git clone https://github.com/snoopysecurity/NoSQLMap.git /opt/nosqlmap && \
    git clone https://github.com/AlbinoDrought/SQLInjection.git /opt/sql-injection && \
    git clone https://github.com/brutelogic/bWAPP.git /opt/bwapp && \
    git clone https://github.com/ethicalhack3r/DVWS.git /opt/dvws && \
    git clone https://github.com/WebGoat/WebGoat.git /opt/webgoat-api && \
    git clone https://github.com/bkimminich/juice-shop.git /opt/juice-shop-api && \
    git clone https://github.com/ITI/ICS-Security-Tools.git /opt/scada

# Install dependencies for NodeGoat and Juice Shop
RUN cd /opt/nodegoat && npm install && \
    cd /opt/juice-shop && npm install --unsafe-perm

# Expose ports for each application
EXPOSE 3000 4000 8080 80 81 8081 4001 8000 9000

# Set the working directory
WORKDIR /opt

# Default command to run the lab
CMD [ "npm", "start" ]

