mkdir azagent;cd azagent;curl -fkSL -o vstsagent.tar.gz https://vstsagentpackage.azureedge.net/agent/2.211.1/vsts-agent-linux-x64-2.211.1.tar.gz;tar -zxvf vstsagent.tar.gz; if [ -x "$(command -v systemctl)" ]; then export AGENT_ALLOW_RUNASROOT="1" ./config.sh --environment --environmentname "provision-vm-example-0001" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/shanthan0479/ --work _work --projectname 'AzureTestProject' --auth PAT --token kbrgrqohrl3jej32yqie3rbozoycd46s2bklfql47cjusn34cjyq --runasservice; sudo ./svc.sh install; sudo ./svc.sh start; else ./config.sh --environment --environmentname "provision-vm-example-0001" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/shanthan0479/ --work _work --projectname 'AzureTestProject' --auth PAT --token kbrgrqohrl3jej32yqie3rbozoycd46s2bklfql47cjusn34cjyq; ./run.sh; fi
