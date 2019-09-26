# usefull-things
Collection of utility scripts and commands for day by day programming.

```
This project is allways in flux so feel free to help and contribute with your own utlity scripts or simple commands that help you troughout the day.
```

## rm-local-branches.sh
Runing with no parmeters will give you a list of branches that exist local and do not longer appear on remote. Running it with 'yes' as its first argument will also remove them from your machine.

## Comands
### Search text inside files
**grep --include=\*.xml -rnw '/usr/local/tomcat' -e "port="**

Search for string "port=" in all files ending in .xml in /usr/local/tomcat (Shows file path and name, line number and the actual line).

* --include can be used or not. There is also --exclude
* -r ->recursive
* -n ->for line number
* -w ->for word search.

See **man grep** for more.

### Find a process in Mac OS
Find the process id that uses a port:

* **netstat -pnlt | grep ':8086'**
* **netstat -tulpn | grep ':8086'**


Open a htop with the process 42846:
*htop -p 42846*


### Check disk
**df -h**
