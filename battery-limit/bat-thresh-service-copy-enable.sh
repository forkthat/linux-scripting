#!/bin/bash

sudo cp -i battery-charge-threshold.service /etc/systemd/system/battery-charge-threshold.service
sudo systemctl enable battery-charge-threshold.service
sudo systemctl start battery-charge-threshold.service
