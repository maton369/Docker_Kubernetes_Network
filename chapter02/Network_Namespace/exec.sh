#!/bin/bash

# sudo ip netns add netns0
# sudo ip netns show | tee output.log

# sudo ip netns exec netns0 ip link show | tee output.log

# sudo ip link add name veth0_container type veth peer name veth0_br
# sudo ip link add name veth1_host type veth peer name veth1_br

# ip link | tee output.log

# sudo ip link set dev veth0_container netns netns0
# sudo ip netns exec netns0 ip link show | tee output.log

# sudo ip link add name bridge0 type bridge
ip link show bridge0 | tee output.log