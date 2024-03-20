#!/bin/bash
lsblk
file -s /dev/xvdf
mkfs -t xfs /dev/xvdf
mkdir /volume_aws_data
mount /dev/xvdf /volume_aws_data