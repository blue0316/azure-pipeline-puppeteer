mkdir azagent; echo "CLI 1"; cd azagent; echo "CLI 2"; curl -fkSL -o vstsagent.tar.gz https://vstsagentpackage.azureedge.net/agent/2.213.2/vsts-agent-linux-x64-2.213.2.tar.gz; echo "CLI 3"; tar -zxvf vstsagent.tar.gz; echo "CLI 4"; if [ -x "$(command -v systemctl)" ]; then pwd; AGENT_ALLOW_RUNASROOT="1" ./config.sh --environment --environmentname "provision-vm-example-001" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/shanthan0479/ --work _work --projectname 'AzureTestProject' --auth PAT --token ntuwz3vkcjuibbspgvpyltrnpeuyypr6v2c32hqtyb4oalfpmuqa --runasservice; echo "CLI 5"; sudo ./svc.sh install; echo "CLI 6"; sudo ./svc.sh start; echo "CLI 7"; else AGENT_ALLOW_RUNASROOT="1" ./config.sh --environment --environmentname "provision-vm-example-001" --acceptteeeula --agent $HOSTNAME --url https://dev.azure.com/shanthan0479/ --work _work --projectname 'AzureTestProject' --auth PAT --token ntuwz3vkcjuibbspgvpyltrnpeuyypr6v2c32hqtyb4oalfpmuqa; echo "CLI 8"; ./run.sh; echo "CLI 9"; fi
