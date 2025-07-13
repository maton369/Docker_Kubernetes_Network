#!/bin/bash

sudo ip netns add netns0
sudo ip netns show | tee output.log