FROM ubuntu:22.04

ADD monero-0.18.3.3 /app
WORKDIR /app

COPY monerod.conf /app/monerod.conf
COPY monero-wallet.conf /app/monero-wallet.conf

RUN chmod +x /app/monerod
RUN chmod +x /app/monero-wallet-rpc
