function Postto-Mattermost {
<#
.Synopsis
   Post text to a Mattermost Channel via Webhooks
.DESCRIPTION
   Long description
.EXAMPLE
   Postto-Mattermost -uri "http://mattermost.foo.com/hooks/xxxxxxxxxxxxxxxxx" -text ”New message from Powershell” -user "Powershell"
.INPUTS
   $uri,$text,$user
.NOTES
   All Inputs are Mandatory
#>
    [CmdletBinding()]Param
    (
        # Incoming Webhook
        [Parameter(Mandatory=$true
        )]
        $uri,
        # Body of message
        [Parameter(Mandatory=$true
        )]
        $text,
        # Username to post as
        [Parameter(Mandatory=$true
        )]
        $user
     )
    $Payload = @{ text=$text; username=$user;icon_url=”link to icon”}
    Invoke-RestMethod -Uri $uri -Method Post -ContentType 'application/json' -Body (ConvertTo-Json $Payload)
}
