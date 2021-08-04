# DB Log-in using PasswordSafe for different regions
#!/bin/bash
 
#Usage
echo 'On command line run ./db_login.sh <region> <account_number> <password>'
echo 'Example region is LDN or TKY or DEV'
echo 'account_number is just the safe account number'
echo 'password is the password copied from Safe page'
 
if [ $# -ne 3 ]
then
      echo 'Usage:./db_login.sh <region> <account_number> <password>'
      exit 1
fi
 
#LDN
db_ldn_user=$2
db_ldn_pass=$3
 
#TKY
db_tky_user=$2
db_tky_pass=$3
 
#DEV
db_dev_user=dev_rw
db_dev_pass=XXX
 
if [ $1 == 'LDN' ]
then
        #LDN connection string
        echo '------------------------------------------------------------------'
        echo 'Database: LDN_DB'
        echo 'Account user $db_ldn_user'
        while true; do
        read -p 'Do you wish to continue? ' yn
        case $yn in
          [Yy]* ) break;;
          [Nn]* ) exit;;
          * ) echo 'Please answer yes or no.';;
        esac
        done
        ldn_connection_string="sqsh -S LDN_DB -U $db_ldn_user -P $db_ldn_pass"
        echo 'Running '$ldn_connection_string'...'
        exec $ldn_connection_string
elif [ $1 == 'TKY' ]
then
        #TKY connection string
        echo '------------------------------------------------------------------'
        echo 'Database: TKY_DB'
        echo 'Account user $db_tky_user'
        while true; do
        read -p 'Do you wish to continue? ' yn
        case $yn in
          [Yy]* ) break;;
          [Nn]* ) exit;;
          * ) echo 'Please answer yes or no.';;
        esac
        done
        tky_connection_string="sqsh -S TKY_DB -U $db_tky_user -P $db_tky_pass"
        echo 'Running '$tky_connection_string'...'
        exec $tky_connection_string
elif [ $1 == 'DEV' ]
then
       #DEV connection string
        echo '------------------------------------------------------------------'
       echo 'Database: DEV_DB'
        echo 'Account user $db_dev_user'
        while true; do
        read -p 'Do you wish to continue? ' yn
        case $yn in
          [Yy]* ) break;;
          [Nn]* ) exit;;
          * ) echo 'Please answer yes or no.';;
        esac
        done
        dev_connection_string="sqsh -S DEV_DB -U $db_dev_user -P $db_ldn_pass"
        echo 'Running '$dev_connection_string'...'
        exec $dev_connection_string
else
        echo 'No Region'
fi
