# ~/.config/bumblebee-status/config.py

from bumblebee.status import Status

# Add the necessary imports at the top of your config file
from bumblebee.modules import bluetooth

# Create an instance of your status bar
status = Status()

# Add the Bluetooth module to your status bar
status.add_module(bluetooth)

# Other modules you might want to add
status.add_module('cpu')
status.add_module('memory')
status.add_module('battery')
status.add_module('date')
status.add_module('time')

# Start the status bar
status.run()

# Add this line to enable the tray module
status.add_module('tray')
