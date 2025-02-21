# novnc-passthrough

This is a simple docker container that runs a noVNC server and forwards all traffic to a specified VNC server. This is useful for when you want to expose a VNC server to the internet but don't want to expose the VNC server directly.

## Usage

```bash
docker run -it -p 8080:8080 -e VNC_HOST=your-vnc-host -e VNC_PORT=your-vnc-port lauksva/novnc-passthrough:latest
```

## Environment Variables

- `VNC_HOST`: The host of the VNC server you want to connect to.
- `VNC_PORT`: The port of the VNC server you want to connect to.
- `CONTAINER_PORT`: The port the noVNC server should listen on. Default: 8080
