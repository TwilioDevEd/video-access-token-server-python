$Env:TWILIO_ACCOUNT_SID = "ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
$Env:TWILIO_API_KEY = "SKXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
$Env:TWILIO_API_SECRET = "your_api_secret"
$Env:TWILIO_CONFIGURATION_SID = "VSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

# Uncomment the following if you'd like the environment variables
# to be permanently set on your user account for this machine.

<#

[Environment]::SetEnvironmentVariable("TWILIO_ACCOUNT_SID", $Env:TWILIO_ACCOUNT_SID, "User")
[Environment]::SetEnvironmentVariable("TWILIO_API_KEY", $Env:TWILIO_API_KEY, "User")
[Environment]::SetEnvironmentVariable("TWILIO_API_SECRET", $Env:TWILIO_API_SECRET, "User")
[Environment]::SetEnvironmentVariable("TWILIO_CONFIGURATION_SID", $Env:TWILIO_CONFIGURATION_SID, "User")

#>