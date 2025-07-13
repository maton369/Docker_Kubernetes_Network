#!/bin/bash

# sudo ip netns add netns0
# sudo ip netns show | tee output.log

sudo ip netns exec netns0 ip link show | tee output.log