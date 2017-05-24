#!/bin/bash

# Copyright 2017-Present Pivotal Software, Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.



 sudo apt-get update
 sudo apt-get install sshpass

 echo "Updating routes on opsman"



 sshpass -e ssh -o StrictHostKeyChecking=no ubuntu@${OPSMAN_IP} cp /var/tempest/cert/tempest.crt /var/tempest/cert/tempest.crt.old
 sshpass -e ssh -o StrictHostKeyChecking=no ubuntu@${OPSMAN_IP} cp /var/tempest/cert/tempest.key /var/tempest/cert/tempest.key.old

 sshpass -e ssh -o StrictHostKeyChecking=no ubuntu@${OPSMAN_IP} "echo $KEY >/var/tempest/cert/tempest.key"
 sshpass -e ssh -o StrictHostKeyChecking=no ubuntu@${OPSMAN_IP} "echo $CRT >/var/tempest/cert/tempest.crt"

sshpass -e ssh -o StrictHostKeyChecking=no ubuntu@${OPSMAN_IP} ls -ltrh /var/tempest/cert
