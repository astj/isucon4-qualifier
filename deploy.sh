#!/bin/sh
set -e
set -x
me=$(whoami)
ssh -i ~/.ssh/id_personal_ec2_rsa isucon@$ISUCON_EC2_HOST "cd ~/webapp/perl && git pull && carton install && supervisorctl restart isucon_perl"
