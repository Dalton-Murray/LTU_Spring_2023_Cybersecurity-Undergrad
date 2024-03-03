$From = "fraud@navyfederal.org"
$Headers = 'From: fraud@navyfederal.org'
$To = "dmurray2@ltu.edu"
$Subject = "THIS EMAIL IS FOR INFORMATIONAL PURPOSES ONLY"
$Body = "This is not filled out yet - on purpose"

# Define the SMTP server details
$SMTPServer = "smtp.gmail.com"
$SMTPPort = 587
$SMTPUsername = "dmurray2@ltu.edu"
$SMTPPassword = "tnynrczbercfmwlf" # This is a app password, not a real password and has since been removed

# Create the email object
$Email = New-Object System.Net.Mail.MailMessage($From, $To, $Subject, $Body, $Headers)

# Set the SMTP client details and send the email
$SMTPClient = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort)
$SMTPClient.EnableSsl = $true
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($SMTPUsername, $SMTPPassword)
$SMTPClient.Send($Email)