# Selfcheck

Alma Self-Checkout application (fork) that can run in a contact-free environment (using a scanner).

![screenshot](https://user-images.githubusercontent.com/4253884/101932940-1d2a0a80-3ba1-11eb-81e6-bc446c859934.png)

## About

This web app utilizes the Alma API to power a self checkout station. There are two components to the selfcheck app: a client and a server.

The (node) server proxies ALMA api requests so that secrets don't have to be shared with clients. The server also filters ip addresses so that access is limited to intended sources.

The (react + tailwind) client facilitates touchless interaction, given the availability of a barcode scanner. This application has been built with the aim of making the library covid-safe by supporting touch free interactions for all user input.

## Installation

### Server

1. Clone the repository to your machine.
1. Run `npm install` in the cloned directory.
1. Copy `example_config.js`, rename it to `config.js`, and set the configuration variables.
1. Set your node env port if you don't want it to run on 3000 (recommended).
1. Optionally, set up an Apache reverse proxy, and limit to the IP address(es) of your kiosk(s). The server can only handle requests from IPs in the configuration file.

### Client

1. Navigate to the `/client` directory
1. Run `npm install` and `npm run build` to set up the client. The server will serve the client directly from `/client/build/` which is generated in the `npm run build` step.

## Run

Once you have completed the installation steps:

```
node main.js
```
