# Home Assistant DropSync Add-on

This add-on runs DropSync as a Home Assistant add-on with ingress enabled.

## Features

- Runs DropSync inside Supervisor
- Opens from the Home Assistant sidebar
- Exposes the web UI through ingress
- Optional direct port mapping for troubleshooting

## Notes

DropSync uses WebRTC for peer-to-peer transfers and a signaling server for the initial connection setup.
If you place it behind Cloudflare Tunnel, enable WebSockets and disable HTTP/2 to origin.
