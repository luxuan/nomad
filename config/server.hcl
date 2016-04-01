# Increase log verbosity
log_level = "DEBUG"

bind_addr = "0.0.0.0"
# Setup data dir
data_dir = "/tmp/nomad_bootstrap_server"

advertise {
  # We need to specify our host's IP because we can't
  # advertise 0.0.0.0 to other nodes in our cluster.
  rpc = "10.229.88.91:4647"
  serf = "10.229.88.91:4648"
#rpc = "10.0.0.0/8:4647"
#serf = "10.0.0.0/8:4648"
}


# Enable the server
server {
    enabled = true

    # Self-elect, should be 3 or 5 for production
    bootstrap_expect = 1
}
