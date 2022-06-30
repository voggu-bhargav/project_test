FROM ubuntu
MAINTAINER voggu "voggu.bhargav@gmail.com"

#copy dependencies fiel to home dir
ADD minimal-flask-example /

#update
RUN apt-get update
RUN apt-get install curl -y

#install pip 
RUN apt-get install -y python3-pip

#install flask dependencies
RUN python3 -m pip install -r requirements.txt

#EXPOSE 5000

CMD "./run_app_dev.sh"
CMD ["flask", "run", "--host", "0.0.0.0"]
