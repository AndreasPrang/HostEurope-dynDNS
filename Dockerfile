# Dockerizing nginx-RTMP: Dockerfile for building nginx-RTMP images
# Based on ubuntu:latest, installs Host Europe dynDNS Dock

# Format: FROM    repository[:version]
#FROM 	ubuntu:latest
FROM	resin/rpi-raspbian

# Format: MAINTAINER Name <email@addr.ess>
MAINTAINER Andreas W. Prang <writeAmail@me.com>

# Install CronJob:
RUN 	\
	apt-get update;\
	apt-get install -y cron;\
 	crontab -l | { cat; echo "* * * * * /usr/local/bin/HostEuropeDynDns"; } | crontab -

# Add Script for dynDNS updates
ADD 	HostEuropeDynDns /usr/local/bin/HostEuropeDynDns
RUN 	chmod +x /usr/local/bin/HostEuropeDynDns
