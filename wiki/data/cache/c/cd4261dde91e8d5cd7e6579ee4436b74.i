a:10:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Ruby On Rails";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:29;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:36;}i:5;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"Instalace";i:1;i:2;i:2;i:36;}i:2;i:36;}i:6;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:36;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:574:"
# přihlášené jako root
sudo su
# přidání rezitáře pro nodeJS
add-apt-repository -y ppa:chris-lea/node.js
# update
apt-get update
# instalace potřebných knihoven
apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties git ruby rails irb nodejs
# instalace gemu rails
gem install rails
# kontrola nainstalované verze
rails -v
# vytvoření aplikace
rails new myapp
# start server
rails server -e development -p 3000 -b 0.0.0.0
";i:1;s:4:"bash";i:2;N;}i:2;i:64;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:651;}i:9;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:651;}}