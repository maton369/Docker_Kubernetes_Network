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
# ip link show bridge0 | tee output.log

# sudo ip link set dev veth0_br master bridge0
# sudo ip link set dev veth1_br master bridge0
# ip link | tee output.log

# 仮想インターフェース veth0_container に IP アドレスを割り当て
# sudo ip netns exec netns0 ip address add 192.168.0.1/24 dev veth0_container
# 割り当てたアドレスを確認（状態表示）
# sudo ip netns exec netns0 ip address show veth0_container | tee output.log

# veth1_host に IP アドレスを割り当てる（要 root 権限）
sudo ip address add 192.168.0.2/24 dev veth1_host
# veth1_host のインターフェース情報を表示
ip address show veth1_host | tee output.log