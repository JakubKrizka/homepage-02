a:26:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"apache";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"httpd - Apache Hypertext Transfer Protocol Server";}i:2;i:23;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:72;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:375:"
httpd [ -d serverroot ] [ -f config ] [ -C directive ] [ -c directive ] [ -D parameter ] [ -e level ] [ -E file ] [ -k start|restart|graceful|stop|graceful-stop ] [ -R directory ] [ -h ] [ -l ] [ -L ] [ -S ] [ -t ] [ -v ] [ -V ] [ -X ] [ -M ]

# On Windows systems, the following additional arguments are available:

httpd [ -k install|config|uninstall ] [ -n name ] [ -w ]
";i:1;N;i:2;N;}i:2;i:79;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:79;}i:8;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:32:"http://linux.die.net/man/8/httpd";i:1;s:12:"(man apache)";}i:2;i:464;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:513;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:514;}i:11;a:3:{i:0;s:2:"hr";i:1;a:0:{}i:2;i:514;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:521;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"apache.conf";i:1;i:1;i:2;i:521;}i:2;i:521;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:521;}i:15;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:221:"
<Directory /cesta/ke/složce>

#	Options Indexes FollowSymLinks
#	AllowOverride None
#	Require all granted

AuthType Basic
AuthName "Heslo teď..."
AuthUserFile /cesta/k/souboru/.htpasswd
Require valid-user
</Directory>
";i:1;s:4:"bash";i:2;N;}i:2;i:553;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:789;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"ports.conf";i:1;i:1;i:2;i:789;}i:2;i:789;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:789;}i:19;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:47:"
<IfModule ssl_module>
	Listen 443
</IfModule>
";i:1;s:4:"bash";i:2;N;}i:2;i:820;}i:20;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:883;}i:21;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:32:"sites-available/000-default.conf";i:1;i:1;i:2;i:883;}i:2;i:883;}i:22;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:883;}i:23;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:724:"
<VirtualHost *:80>
Redirect permanent / https://adresa/ 
</VirtualHost> 

<VirtualHost *:443>                                                                                                     
ServerAdmin email@localhost
DocumentRoot /var/www/html
        
SSLEngine on  
SSLProtocol all -SSLv2  
SSLCipherSuite ALL:!ADH:!EXPORT:!SSLv2:RC4+RSA:+HIGH:+MEDIUM

SSLCertificateFile /etc/apache2/ssl/certifikát.crt  
SSLCertificateKeyFile /etc/apache2/ssl/certifikát.key                          

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
                                                                                                            
</VirtualHost> 
";i:1;s:4:"bash";i:2;N;}i:2;i:937;}i:24;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1678;}i:25;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1678;}}