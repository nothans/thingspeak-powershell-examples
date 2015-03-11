# ThingSpeak-PowerShell
Send data to ThingSpeak from a Windows PowerShell Script

## Getting Started with ThingSpeak
[ThingSpeak](https://thingspeak.com) is an open source **Internet of Things** application and API to store and retrieve data from anything using HTTP over the Internet or via a Local Area Network.

### Sign Up for ThingSpeak
* Sign Up for New User Account - [https://thingspeak.com/users/new](https://thingspeak.com/users/new)
* Create a new ThingSpeak Channel by selecting _Channels_ and then _Create New Channel_
* Copy and save the ThingSpeak Write API Key and enter it into the PowerShell Script

## freespace.ps1
When this script executes, _[freespace.ps1](/freespace.ps1)_ will report the free space of the disk drive to a ThingSpeak Channel.

### Script Notes:

* Place the _freespace.ps1_ Windows PowerShell script on your desktop computer / server
* Make sure you set the correct drive letter, such as "C:" or "D:"
* Make sure to enter your ThingSpeak Wite API Key for your Channel

## Resources
The following links were helpful in creating and implementing my PowerShell scripts:

* [How to Write Your First Powershell Script](http://www.adminarsenal.com/admin-arsenal-blog/powershell-how-to-write-your-first-powershell-script)
* [Execute PowerShell Script Using Windows Task Scheduler](http://stackoverflow.com/questions/23953926/how-to-execute-a-powershell-script-automatically-using-windows-task-scheduler)
