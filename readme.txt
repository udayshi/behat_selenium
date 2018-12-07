composer install --dev
bin/manager update #Will download and update selenium server
bin/manager start #Start Selenium Server

bin/behat --init
bin/behat --append-snippets #Add code on file
bin/behat -dl
bin/behat

#Copy
cp selenium/chromedriver /usr/local/bin/
cp selenium/geckodriver /usr/local/bin/

#Start the server
java -jar selenium/selenium-server-standalone-3.8.1.jar