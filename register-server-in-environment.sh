whoami;sudo -su <azureuser>;mkdir azagent;cd azagent;curl -fkSL -o vstsagent.tar.gz https://vstsagentpackage.azureedge.net/agent/2.210.1/vsts-agent-linux-x64-2.210.1.tar.gz;tar -zxvf vstsagent.tar.gz; ./config.sh --environment --environmentname "provision-vm-example-0001" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/shanthan0479/ --work _work --projectname 'AzureTestProject' --auth PAT --token ldbi4ffvsxdn3kiizvoyakd6yutzmye4enktir2meepqleshum5a --runasservice; sudo ./svc.sh install; sudo ./svc.sh start; else ./config.sh --environment --environmentname "provision-vm-example-0001" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/shanthan0479/ --work _work --projectname 'AzureTestProject' --auth PAT --token ldbi4ffvsxdn3kiizvoyakd6yutzmye4enktir2meepqleshum5a; ./run.sh; fi
