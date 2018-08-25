#!/bin/bash
#releases : https://releases.hashicorp.com/terraform/
# ./install.sh terraform https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip
TOOL_NAME=$1
ZIP_URL=$2
mkdir /tmp/$TOOL_NAME
cd /tmp/$TOOL_NAME
curl -sS $ZIP_URL > $TOOL_NAME.zip
unzip $TOOL_NAME.zip
cp $TOOL_NAME /usr/local/bin/$TOOL_NAME
rm -rf /tmp/$TOOL_NAME
echo "$TOOL_NAME was installed successfully"
