mkdir azagent; cd azagent; curl -fkSL -o vstsagent.tar.gz https://vstsagentpackage.azureedge.net/agent/2.210.1/vsts-agent-linux-x64-2.210.1.tar.gz; tar -zxvf vstsagent.tar.gz; if [ -x "$(command -v systemctl)" ]; then ./config.sh --environment --environmentname "provision-vm-example-0001" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/shanthan0083/ --work _work --projectname 'PuppeteerTestProject' --auth PAT --token kmjkca6t7l7ju33obwb25utrqvdgbeggaeg5m32ndcifgsijov3q --runasservice; sudo ./svc.sh install; sudo ./svc.sh start; else ./config.sh --environment --environmentname "provision-vm-example-0001" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/shanthan0083/ --work _work --projectname 'PuppeteerTestProject' --auth PAT --token kmjkca6t7l7ju33obwb25utrqvdgbeggaeg5m32ndcifgsijov3q; ./run.sh; fi