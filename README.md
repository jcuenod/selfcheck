# selfcheck

Alma Self-Check Application

## About

This web app utilizes the Alma API to power a self checkout station. 

This version supports touch free interactions by utilizing a barcode scanner on a stand for all user input.

## Install

1. Clone the repository to your machine.
2. Run `npm install` in the cloned directory.
3. Copy `example_config.js` to `config.js` and update the values to match.
4. Set your node env port if you don't want it to run on 3000 (recommended)
5. If you want, set up an Apache reverse proxy, and limit to the IP address(es) of your kiosk(s).
