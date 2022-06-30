#!bin/bash
 RETRIES=10
                        for i in $(seq 1 $RETRIES);
                        do
                            echo "retry n. $i"
                            if curl -s --head  --request GET http://localhost/api/docs/# | grep "200 OK" > /dev/null; then 
                                echo "mysite.com is UP"
                                break
                            else
                                echo "mysite.com is DOWN"
                                sleep 30
                            fi
                        done