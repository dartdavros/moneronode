# Dockerize Monero full-node
## Wallet RPC support

### Monero 0.18.3.3 daemon with Wallet RPC, built on Ubuntu 22.04

**Wallet RPC documentation: [documentation]**
**Python RPC client: [normoes/python-monerorpc]**

## Run

```sh
docker-compose up --build
```

## Config

### monerod.conf

| Option | Description |
| ------ | ------ |
| rpc-bind-ip | IP to listen on. By default 127.0.0.1 because API gives full administrative capabilities over the node. Set it to 0.0.0.0 to listen on all interfaces - but only in connection with one of *-restricted-* options and --confirm-external-bind. |
| rpc-bind-port | TCP port to listen on. By default 18081 (mainnet), 28081 (testnet), 38081 (stagenet). |
| rpc-login | Specify username[:password] required to connect to API. |
| testnet | Run on testnet. Remember to run your wallet with --testnet as well. |
| confirm-external-bind | Confirm you consciously set --rpc-bind-ip to non-localhost IP and you understand the consequences. |

### monero-wallet.conf

| Option | Description |
| ------ | ------ |
| rpc-bind-ip | IP to listen on. By default 127.0.0.1 because API gives full administrative capabilities over the node. Set it to 0.0.0.0 to listen on all interfaces - but only in connection with one of *-restricted-* options and --confirm-external-bind. |
| rpc-bind-port | TCP port to listen on. By default 18089 (mainnet), 28089 (testnet), 38089 (stagenet). |
| rpc-login | Specify username[:password] required to connect to API. |
| daemon-login | Specify username[:password] required to connect to API. |
| daemon-port | TCP port to listen on. By default 18081 (mainnet), 28081 (testnet), 38081 (stagenet). |
| confirm-external-bind | Confirm you consciously set --rpc-bind-ip to non-localhost IP and you understand the consequences. |
| wallet-file | Wallet file path |
| wallet-dir | Wallet dir. Set if not created wallet |



## License

MIT

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [documentation]: <https://www.getmonero.org/resources/developer-guides/wallet-rpc.html>
   [normoes/python-monerorpc]: <https://github.com/normoes/python-monerorpc>
