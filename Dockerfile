# Use the official wg-easy image as a base
FROM ghcr.io/wg-easy/wg-easy

# Set environment variables
ENV WG_HOST=your-server-ip
ENV PASSWORD=your-admin-password

# Expose the necessary ports
EXPOSE 51820/udp
EXPOSE 51821/tcp

# Entry point to run the wg-easy service
CMD ["node", "/app/dist/main.js"]
