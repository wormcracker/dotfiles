
#!/bin/bash

# Retrieve country code
country_code=$(curl -4 -sf ifconfig.co/country-iso)

# Output the country code
echo "$country_code"

# For all information
# #!/bin/bash
#
# # Retrieve city, country name, country code, and public IP address
# city=$(curl -4 -sf ifconfig.co/city)
# country_name=$(curl -4 -sf ifconfig.co/country)
# country_code=$(curl -4 -sf ifconfig.co/country-iso)
# public_ip=$(curl -4 -sf ifconfig.co)
#
# # Construct the notification message
# notification_message="Public IP: $public_ip\nCity: $city\nCountry: $country_name ($country_code)"
#
# # Send notification using notify-send (make sure libnotify is installed)
# notify-send "IP Information" "$notification_message" -t 10000

