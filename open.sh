apt-get install python3-dev python3-pip python3-virtualenv -y 
apt-get install jq -y 
apt install ftp


virtualenv env/
. env/bin/activate
pip install upgrade 'setuptools<45.0.0'
pip install rdpy  opencanary scapy


opencanaryd --copyconfig

nano ~/ .opencanaryd.conf

"SMTP": {
                "class": "logging.handlers.SMTPHandler",
                "mailhost": ["smtp.gmail.com", 587],
                "fromaddr": "noreply@yourdomain.com",
                "toaddrs" : ["youraddress@gmail.com"],
                "subject" : "OpenCanary Alert",
                "credentials" : ["youraddress", "abcdefghijklmnop"],
                "secure" : []
             }


opencanaryd --start 
. env/bin/activate
cat /var/tmp/opencanaryd.log

#check Email
You will find opencanary alert!


