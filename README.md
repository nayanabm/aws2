Steps to setup on aws

- Update yum and install git
      - Run : sudo yum update -y
      - Run : sudo yum install -y git
        
- Clone https://github.com/nayanabm/aws2

- Clone https://github.com/Abhivision/rRobo

- Go to aws2 directory
      - Run : bash install.sh
      - Run : sudo reboot #and again make aws ssh connection
      - Run : bash setup.sh (inside aws directory)
      - Run : docker-compose run web bash app/pg.sh #creates database with price values
      - Run : docker-compose run sentiment  python robo_app/sentiment.py #adds news to the database 
      - Run : bash setup.sh

- Go to rRobo directory 
      - Run : sudo chmod -R a+w /usr/lib64/R/library
      - Run : Rscript install.R
      - Run : bash trainMonthly.sh
      - Run : bash job.sh
  (Command to run R file : Rscript filename)

- Steps on aws instance to set cronjob
      - connect to instance
      - Run : 
curl -L https://github.com/docker/compose/releases/download/1.7.0/docker-compose-`uname -s`-`uname -m` > ./docker-compose
      - Run : sudo mv ./docker-compose /usr/bin/docker-compose
      - Run : sudo chmod +x /usr/bin/docker-compose
      - Create daily.sh
      
            cd aws      
            bash job.sh
            cd
            cd rRobo
            bash job.sh
            
      - Create monthly.sh
      
            cd rRobo
            bash trainMonthly.sh
            
      - Run : crontab -e
      - Create cron expressions
      
            30 2 * * 2-6 bash daily.sh
            @monthly bash trainMonthly.sh
            
- For applying new changes
      - Run : bash deploy.sh (inside aws directory)
      - Run : git pull (inside rRobo directory)


