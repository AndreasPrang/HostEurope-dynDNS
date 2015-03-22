# HostEurope-dynDNS

Parameter hostid finden:
1. KIS (https://kis.hosteurope.de/administration/domainservices/index.php?menu=1&mode=autodns) einloggen
2. Administration -> Domainservices -> AutoDNS ... -> ... [Editieren]
3. letzte Zeile in Tabelle "Hostnamen": subdomain - A - 1.1.1.1 [Neu anlegen]
4. Seitenquelltext nach subdomain.meinedomain.de durchsuchen
5. nach hostid suchen --> Zahl daneben merken

Image bauen:
sudo docker build -t andreasprang/hosteurope_dyndns ./

Image starten:
sudo docker run -d --restart=always -e KUNDENNR=123456 -e PASSWORD=mySecurePass -e DOMAIN=domain.ltd -e HOSTID=12345678 andreasprang/hosteurope_dyndns
