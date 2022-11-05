//execute the Script using a bash shell
#!/bin/bash

//location of the txt file of usernames
userfile=userlist 

//extracting usernames from the file one-by-one
username=$(cat userlist | tr 'A-Z'  'a-z')

//defining the default password 
password=P@55w0rd

//running loop  to add users
for user in $username
do
       //adding users '$user' is a variable that changes
       // usernames accordingly in txt file.
       useradd $user
       echo $password | passwd --stdin $user
done

//echo is used to display the total numbers of 
//users created, counting the names in the txt 
//file, tail to display the final details of 
//the process on both lines(optional)
echo "$(wc -l /tmp/userlist) users have been created" 
tail -n$(wc -l /tmp userlist) /etc/passwd