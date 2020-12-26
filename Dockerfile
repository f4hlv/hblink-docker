FROM python
MAINTAINER vincent@f4hlv.fr

WORKDIR /opt/
RUN git clone https://github.com/HBLink-org/hblink3.git

WORKDIR /opt/hblink3
RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir /var/log/dmrlink \                                                                  
 && mkdir /var/log/link

CMD python3 /opt/hblink3/bridge.py
