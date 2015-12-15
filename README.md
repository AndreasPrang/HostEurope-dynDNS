# HostEurope-dynDNS

Image bauen:
sudo docker build -t andreasprang/hosteurope_dyndns ./

Image starten:
sudo docker run -d --restart=always -e KUNDENNR=123456 -e PASSWORD=mySecurePass -e DOMAIN=domain.ltd -e HOST=server andreasprang/hosteurope_dyndns
