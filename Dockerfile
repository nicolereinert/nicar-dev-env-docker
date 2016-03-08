#########################################
## This docker file includes the files required to setup
## the development environment for the NICAR 2016 conference
#########################################

FROM ubuntu:latest
MAINTAINER jeremy@westendmedia.ca
ENV DEBIAN_FRONTEND noninteractive

# Update apt-get
RUN apt-get -y update

# Install Node.JS and NPM
RUN apt-get install -y node npm
RUN npm install -y -g grunt-cli grunt bower

# Install LAMP stack
RUN apt-get -y install apache2
RUN apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql
RUN apt-get -y install php5 libapache2-mod-php5 php5-mcrypt

# Install Ruby stack
RUN apt-get install -y rails rbenv

# Install PostgreSQL and PostGIS
RUN apt-get install -y postgresql postgis

# Install Python and Python-based Apps.
RUN apt-get install -y python python-dev python-pip
RUN pip install csvkit Django pandas virtualenv virtualenvwrapper
RUN pip install awscli aws-shell

# Install GIT, R and rest of software
RUN apt-get install -y r-base qgis sqlite git nano wget htop
