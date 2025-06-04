# Forward DNS queries to external DNS (like Google)
server=8.8.8.8

# Listen on your Pi's IP
listen-address=127.0.0.1,192.168.9.20

# Optional: Set domain
domain=kubenanarchy.org

# Add static DNS records
address=/mc.kubenanarchy.org/192.168.9.15
address=/www.kubenanarchy.org/192.168.9.31