sudo useradd -m -s /usr/bin/zsh test;sudo passwd test;sudo su - test;mkdir azagent;cd azagent;curl -fkSL -o vstsagent.tar.gz https://vstsagentpackage.azureedge.net/agent/2.211.1/vsts-agent-linux-x64-2.211.1.tar.gz;tar -zxvf vstsagent.tar.gz; if [ -x "$(command -v systemctl)" ]; then ./config.sh --environment --environmentname "provision-vm-example-0001" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/shanthan0479/ --work _work --projectname 'AzureTestProject' --auth PAT --token phjkgr4niqa6bxal7zcxuoczistbtaypjzv4t62w2y44fh5vosyq --runasservice; sudo ./svc.sh install; sudo ./svc.sh start; else ./config.sh --environment --environmentname "provision-vm-example-0001" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/shanthan0479/ --work _work --projectname 'AzureTestProject' --auth PAT --token phjkgr4niqa6bxal7zcxuoczistbtaypjzv4t62w2y44fh5vosyq; ./run.sh; fi
