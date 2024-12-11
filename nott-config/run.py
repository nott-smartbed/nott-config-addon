import json
import os

# Path to the options file
options_file_path = '/data/options.json'

# Check if the options file exists
if not os.path.exists(options_file_path):
    raise FileNotFoundError(f"Options file not found at {options_file_path}")

# Read configuration options from the JSON file
with open(options_file_path, 'r') as options_file:
    options = json.load(options_file)

api_token = options.get('api_token')
username = options.get('username')
password = options.get('password')

# Create the YAML file
config_data = {
    'api_token': api_token,
    'username': username,
    'password': password
}

with open('/config/example_addon_config.yaml', 'w') as config_file:
    config_file.write(json.dumps(config_data, indent=2))

print("Configuration saved to /config/example_addon_config.yaml")