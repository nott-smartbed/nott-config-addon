#!/bin/bash
set -e

# Source Bashio
source /usr/bin/bashio

# Read configuration options
API_TOKEN=$(bashio::config 'api_token')
USERNAME=$(bashio::config 'username')
PASSWORD=$(bashio::config 'password')

# Create the YAML file
cat <<EOF > /config/example_addon_config.yaml
api_token: ${API_TOKEN}
username: ${USERNAME}
password: ${PASSWORD}
EOF

# Your add-on logic here
echo "Configuration saved to /config/example_addon_config.yaml"