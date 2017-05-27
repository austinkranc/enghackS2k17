# EdisonWiFiSetup #

**Links:** http://download.intel.com/support/edison/sb/edison_wifi_331438001.pdf (Chapter 6.3 + 6.9)

http://www.instructables.com/id/Factory-Reset-your-Intel-EdisonTroubleshooting-Con/ (if nothing is making sense)

### Notes: ###

**WiFiSetup**

-Need both USB cables connected + SideSwitch in down position. If the device is off, it isn't working.

-PuTTy Terminal: Serial=COM6 Spee=115200

-For reboot, press and hold the power button for 10 seconds. When lights are off, press again for 5 seconds or until a light flashes.
Then spam the keyboard to run the boot command `run do_ota`

-if you cannot login, don't bother with the devices given. Resetting the password requires an image that is actually too large for the device

-run `configuration_edison --wifi` first. No need to connect to a wifi network, however, this step properly setups the wifi direct

-run steps from Chapter 6.3 and Chapter 6.9
1. systemctl status wpa_supplicant
1. systemctl start wpa_supplicant
1. wpa_cli -iwlan0 interface
1. wpa_cli -ip2p-dev-wlan0 p2p_find
1. wpa_cli -ip2p-dev-wlan0 p2p_peers .... grab the MAC code given
1. wpa_cli -ip2p-dev-wlan0 p2p_connect (MAC CODE) pbc persistent go_intent=0

**Data transfer to phone**
