# Postto-Mattermost
Powershell Script to Post Text to a Mattermost Channel using Incoming Webhooks

EXAMPLE
   Postto-Mattermost -uri "http://mattermost.foo.com/hooks/xxxxxxxxxxxxxxxxx" -text ”New message from Powershell” -user "Powershell"


Known Issue:

In some cases on Server 2012R2, there may be an error "Invoke-WebRequest: The Request Was aborted:Could not Create SSL/TLS secure channel"
Workaround:  Change the TLS Security Protocol to Tls12  "[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
