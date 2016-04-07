# Increase log verbosity
log_level = "DEBUG"

# Setup data dir
data_dir = "/tmp/client1"
name = "aliyun-17.23"

# Enable the client
client {
    enabled = true
    node_class = "dip"

    # For demo assume we are talking to server1. For production,
    # this should be like "nomad.service.consul:4647" and a system
    # like Consul used for service discovery.
    servers = ["10.229.88.91:4647"]
}

# Modify our port to avoid a collision with server1
ports {
    http = 5656
}

