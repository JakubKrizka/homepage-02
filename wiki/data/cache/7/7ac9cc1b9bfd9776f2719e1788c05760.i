a:3:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:64502:"

#!/bin/bash
con0=0
while [ $con0 -eq 0 ]
do
clear

	echo "NastavenĂ­ firewallu (by Jakub KĹ™iĹľka)"
	echo "Zdroj: man ufw"
	echo
 
	if [ "$(id -u)" != "0" ]; then
		echo "------------------------"	
		echo "SpusĹĄte script jako root" 1>&2
		echo "------------------------"
		exit 1
	fi
		echo "----------------------------------------------------------"
		ufw status verbose
		echo "----------------------------------------------------------"
		echo
		echo "0  - Konec"
		echo "1  - Aktivovat"
		echo "2  - Deaktivovat"
		echo "3  - Nastavit"
		echo "4  - Reset vĹˇech nastavenĂ­"
		echo "--"
		read -e read1

	if [ $read1 -eq 0 ]; then
		clear		
		exit 1
	fi

	if [ $read1 -eq 1 ]; then
		echo "----------------------------------------------------------"
		ufw enable
		echo "----------------------------------------------------------"
	fi

	if [ $read1 -eq 2 ]; then
		echo "----------------------------------------------------------"
		ufw disable
		echo "----------------------------------------------------------"
	fi

	if [ $read1 -eq 3 ]; then	
		con0=1
		con1=0
		while [ $con1 -eq 0 ]
		do	
		clear
		echo "-------------"		
		echo "3  - Nastavit"
		echo "-------------"
	    	echo
		echo "0  - ZpÄ›t"
		echo "1  - VĂ˝chozĂ­ nastavenĂ­"
		echo "2  - Pravidla"
		echo "3  - Limity"
		echo "4  - LogovĂˇnĂ­"
		echo "--"
		read -e read2
	
			if [ $read2 -eq 0 ]; then
				con0=0
				con1=1
			fi 
		
			if [ $read2 -eq 1 ]; then
				con1=1
				con2=0
				while [ $con2 -eq 0 ]
				do
				clear
				echo "-------------"
				echo "3  - Nastavit"
				echo "----------------------"		
				echo "1  - VĂ˝chozĂ­ nastavenĂ­"
				echo "----------------------"
				echo
				echo "0  - ZpÄ›t"
				echo "1  - Povolit"
				echo "2  - ZakĂˇzat"
				echo "--"
				read -e read3

					if [ $read3 -eq 0 ]; then
						con1=0
						con2=1
					fi 
			
					if [ $read3 -eq 1 ]; then
						con2=1
						con3=0
						clear
						echo "-------------"
						echo "3  - Nastavit"
						echo "----------------------"		
						echo "1  - VĂ˝chozĂ­ nastavenĂ­"
						echo "----------------------"
						echo "1  - Povolit"
						echo "----------------------"
						echo
						echo "0  - ZpÄ›t"
						echo "1  - PĹ™Ă­chozĂ­"
						echo "2  - OdchozĂ­"
						echo "--"
						while [ $con3 -eq 0 ]
						do
						read -e read4

							if [ $read4 -eq 0 ]; then
								con2=0							
								con3=1
							fi 
							if [ $read4 -eq 1 ]; then
								echo "----------------------------------------------------------"
								ufw default allow incoming
								echo "----------------------------------------------------------"
							fi
							if [ $read4 -eq 2 ]; then
								echo "----------------------------------------------------------"
								ufw default allow outgoing
								echo "----------------------------------------------------------"
							fi  
						done
					fi 

					if [ $read3 -eq 2 ]; then
						con2=1
						con3=0
						clear
						echo "-------------"
						echo "3  - Nastavit"
						echo "----------------------"		
						echo "1  - VĂ˝chozĂ­ nastavenĂ­"
						echo "----------------------"
						echo "2  - ZakĂˇzat"
						echo "----------------------"
						echo
						echo "0  - ZpÄ›t"
						echo "1  - PĹ™Ă­chozĂ­"
						echo "2  - OdchozĂ­"
						echo "--"
						while [ $con3 -eq 0 ]
						do
						read -e read4

							if [ $read4 -eq 0 ]; then
								con2=0							
								con3=1
							fi 
							if [ $read4 -eq 1 ]; then
								echo "----------------------------------------------------------"
								ufw default deny incoming
								echo "----------------------------------------------------------"
							
							fi
							if [ $read4 -eq 2 ]; then
								echo "----------------------------------------------------------"
								ufw default deny outgoing
								echo "----------------------------------------------------------"							
							fi  
						done
					fi 
				done
			fi

			if [ $read2 -eq 2 ]; then
				con1=1
				con2=0
				while [ $con2 -eq 0 ]
				do
				clear
				echo "-------------"
				echo "3  - Nastavit"
				echo "-------------"		
				echo "2  - Pravidla"
				echo "-------------"
				echo
				echo "0  - ZpÄ›t"
				echo "1  - IP Adresa (+ Port)"
				echo "2  - Port (+ Rozsah)"
				echo "3  - SluĹľby"
				echo 
				echo "4  - Oprava pravidla (aĹľ ve v1.3)"
				echo "5  - SmazĂˇnĂ­ pravidla"
				echo "--"
				read -e read3

					if [ $read3 -eq 0 ]; then
						con1=0
						con2=1
					fi 
					
					if [ $read3 -eq 1 ]; then
						con2=1
						cona=0
						while [ $cona -eq 0 ]
						do
						clear
						echo "-------------"
						echo "3  - Nastavit"
						echo "-------------"		
						echo "2  - Pravidla"
						echo "-------------"
						echo "1  - IP Adresa (+ Port)"
						echo "-----------------------"
						echo
						echo "0  - ZpÄ›t"
						echo "1  - Pouze IP adresa"
						echo "2  - IP adresa & port"
						echo "--"
						read -e reada

							if [ $reada -eq 0 ]; then
								con2=0
								cona=1
							fi 

							if [ $reada -eq 1 ]; then
								cona=1
								conb=0
								while [ $conb -eq 0 ]
								do
								clear
								echo "-------------"
								echo "3  - Nastavit"
								echo "-------------"		
								echo "2  - Pravidla"
								echo "-------------"
								echo "1  - IP Adresa (+ Port)"
								echo "-----------------------"
								echo "1  - Pouze IP adresa"
								echo "--------------------"
								echo
								echo "0  - ZpÄ›t"
								echo "1  - Povolit"
								echo "2  - ZakĂˇzat"
								echo "--"
								read -e readb	

									if [ $readb -eq 0 ]; then
										cona=0							
										conb=1
									fi 
									
									if [ $readb -eq 1 ]; then							
										conb=1
										conc=0
										while [ $conc -eq 0 ]
										do
										clear
										echo "-------------"
										echo "3  - Nastavit"
										echo "-------------"		
										echo "2  - Pravidla"
										echo "-------------"
										echo "1  - IP Adresa (+ Port)"
										echo "-----------------------"
										echo "1  - Pouze IP adresa"
										echo "--------------------"
										echo "1  - Povolit"
										echo "------------"	
										echo
										echo "0  - ZpÄ›t"
										echo "1  - PĹ™Ă­chozĂ­"
										echo "2  - OdchozĂ­"
										echo "--"
										read -e readc

											if [ $readc -eq 0 ]; then
												conb=0							
												conc=1
											fi 

											if [ $readc -eq 1 ]; then
												conc=1
												cond=0
												while [ $cond -eq 0 ]
												do
												clear
												echo "-------------"
												echo "3  - Nastavit"
												echo "-------------"		
												echo "2  - Pravidla"
												echo "-------------"
												echo "1  - IP Adresa (+ Port)"
												echo "-----------------------"
												echo "1  - Pouze IP adresa"
												echo "--------------------"
												echo "1  - Povolit"
												echo "------------"
												echo "1  - PĹ™Ă­chozĂ­"
												echo "-------------"
												echo 
												echo "Zadejte IP adresu nebo 0 pro nĂˇvrat:"
												read -e readd

													if [ $readd -eq 0 ]; then
														conc=0										
														cond=1	
										
														else
														echo "----------------------------------------------------------"
														ufw allow in from $readd	
														echo "----------------------------------------------------------"
													fi
												done												
											fi
											
											if [ $readc -eq 2 ]; then
												cond=0
												clear
												echo "-------------"
												echo "3  - Nastavit"
												echo "-------------"		
												echo "2  - Pravidla"
												echo "-------------"
												echo "1  - IP Adresa (+ Port)"
												echo "-----------------------"
												echo "1  - Pouze IP adresa"
												echo "--------------------"
												echo "1  - Povolit"
												echo "------------"
												echo "2  - OdchozĂ­"
												echo "-------------"
												while [ $cond -eq 0 ]
												do
												echo 
												echo "Zadejte IP adresu nebo 0 pro nĂˇvrat:"
												read -e readd

													if [ $readd -eq 0 ]; then
														conc=0										
														cond=1	
										
														else
														echo "----------------------------------------------------------"
														ufw allow out from $readd	
														echo "----------------------------------------------------------"
													fi
												done												
											fi 
										done
									fi

									if [ $readb -eq 2 ]; then							
										conb=1
										conc=0
										while [ $conc -eq 0 ]
										do
										clear
										echo "-------------"
										echo "3  - Nastavit"
										echo "-------------"		
										echo "2  - Pravidla"
										echo "-------------"
										echo "1  - IP Adresa (+ Port)"
										echo "-----------------------"
										echo "1  - Pouze IP adresa"
										echo "--------------------"
										echo "2  - ZakĂˇzat"
										echo "------------"	
										echo
										echo "0  - ZpÄ›t"
										echo "1  - PĹ™Ă­chozĂ­"
										echo "2  - OdchozĂ­"
										echo "--"
										read -e readc

											if [ $readc -eq 0 ]; then
												conb=0							
												conc=1
											fi 

											if [ $readc -eq 1 ]; then
												cond=0
												clear
												echo "-------------"
												echo "3  - Nastavit"
												echo "-------------"		
												echo "2  - Pravidla"
												echo "-------------"
												echo "1  - IP Adresa (+ Port)"
												echo "-----------------------"
												echo "1  - Pouze IP adresa"
												echo "--------------------"
												echo "2  - ZakĂˇzat"
												echo "------------"
												echo "1  - PĹ™Ă­chozĂ­"
												echo "-------------"
												while [ $cond -eq 0 ]
												do
												echo 
												echo "Zadejte IP adresu nebo 0 pro nĂˇvrat:"
												read -e readd

													if [ $readd -eq 0 ]; then
														conc=0										
														cond=1	
										
														else
														echo "----------------------------------------------------------"
														ufw deny in from $readd	
														echo "----------------------------------------------------------"
													fi
												done												
											fi
											
											if [ $readc -eq 2 ]; then
												cond=0
												clear
												echo "-------------"
												echo "3  - Nastavit"
												echo "-------------"		
												echo "2  - Pravidla"
												echo "-------------"
												echo "1  - IP Adresa (+ Port)"
												echo "-----------------------"
												echo "1  - Pouze IP adresa"
												echo "--------------------"
												echo "2  - ZakĂˇzat"
												echo "------------"
												echo "2  - OdchozĂ­"
												echo "-------------"
												while [ $cond -eq 0 ]
												do
												echo 
												echo "Zadejte IP adresu nebo 0 pro nĂˇvrat:"
												read -e readd

													if [ $readd -eq 0 ]; then
														conc=0										
														cond=1	
										
														else
														echo "----------------------------------------------------------"
														ufw deny out from $readd	
														echo "----------------------------------------------------------"
													fi
												done												
											fi 
										done
									fi 
								done
							fi 

							if [ $reada -eq 2 ]; then
								cona=1
								conb=0
								while [ $conb -eq 0 ]
								do
								clear
								echo "-------------"
								echo "3  - Nastavit"
								echo "-------------"		
								echo "2  - Pravidla"
								echo "-------------"
								echo "1  - IP Adresa (+ Port)"
								echo "-----------------------"
								echo "2  - IP adresa + Port"
								echo "---------------------"
								echo
								echo "0  - ZpÄ›t"
								echo "1  - Povolit"
								echo "2  - ZakĂˇzat"
								echo "--"
								read -e readb	

									if [ $readb -eq 0 ]; then
										cona=0							
										conb=1
									fi 
									
									if [ $readb -eq 1 ]; then							
										conb=1
										conc=0
										while [ $conc -eq 0 ]
										do
										clear
										echo "-------------"
										echo "3  - Nastavit"
										echo "-------------"		
										echo "2  - Pravidla"
										echo "-------------"
										echo "1  - IP Adresa (+ Port)"
										echo "-----------------------"
										echo "2  - IP adresa + Port"
										echo "---------------------"
										echo "1  - Povolit"
										echo "------------"	
										echo
										echo "0  - ZpÄ›t"
										echo "1  - PĹ™Ă­chozĂ­"
										echo "2  - OdchozĂ­"
										echo "--"
										read -e readc

											if [ $readc -eq 0 ]; then
												conb=0							
												conc=1
											fi 

											if [ $readc -eq 1 ]; then
												cond=0
												clear
												echo "-------------"
												echo "3  - Nastavit"
												echo "-------------"		
												echo "2  - Pravidla"
												echo "-------------"
												echo "1  - IP Adresa (+ Port)"
												echo "-----------------------"
												echo "2  - IP adresa + Port"
												echo "---------------------"
												echo "1  - Povolit"
												echo "------------"
												echo "1  - PĹ™Ă­chozĂ­"
												echo "-------------"
												while [ $cond -eq 0 ]
												do
												echo 
												echo "Zadejte IP adresu:"
												read -e readip
												echo "Zadejte port nebo 0 pro nĂˇvrat:"
												read -e readport
												 

													if [ $readport -eq 0 ]; then
														conc=0										
														cond=1	
										
														else
														echo "----------------------------------------------------------"
														ufw allow in from $readip to any port $readport	
														echo "----------------------------------------------------------"
													fi
												done												
											fi
											
											if [ $readc -eq 2 ]; then
												cond=0
												clear
												echo "-------------"
												echo "3  - Nastavit"
												echo "-------------"		
												echo "2  - Pravidla"
												echo "-------------"
												echo "1  - IP Adresa (+ Port)"
												echo "-----------------------"
												echo "2  - IP adresa + Port"
												echo "---------------------"
												echo "1  - Povolit"
												echo "------------"
												echo "2  - OdchozĂ­"
												echo "-------------"
												while [ $cond -eq 0 ]
												do
												echo 
												echo "Zadejte IP adresu:"
												read -e readip
												echo "Zadejte port nebo 0 pro nĂˇvrat:"
												read -e readport
												 

													if [ $readport -eq 0 ]; then
														conc=0										
														cond=1	
										
														else
														echo "----------------------------------------------------------"
														ufw allow out from $readip to any port $readport	
														echo "----------------------------------------------------------"
													fi
												done												
											fi 
										done
									fi

									if [ $readb -eq 2 ]; then							
										conb=1
										conc=0
										while [ $conc -eq 0 ]
										do
										clear
										echo "-------------"
										echo "3  - Nastavit"
										echo "-------------"		
										echo "2  - Pravidla"
										echo "-------------"
										echo "1  - IP Adresa (+ Port)"
										echo "-----------------------"
										echo "2  - IP adresa + Port"
										echo "---------------------"
										echo "2  - ZakĂˇzat"
										echo "------------"	
										echo
										echo "0  - ZpÄ›t"
										echo "1  - PĹ™Ă­chozĂ­"
										echo "2  - OdchozĂ­"
										echo "--"
										read -e readc

											if [ $readc -eq 0 ]; then
												conb=0							
												conc=1
											fi 

											if [ $readc -eq 1 ]; then
												cond=0
												clear
												echo "-------------"
												echo "3  - Nastavit"
												echo "-------------"		
												echo "2  - Pravidla"
												echo "-------------"
												echo "1  - IP Adresa (+ Port)"
												echo "-----------------------"
												echo "2  - IP adresa + Port"
												echo "---------------------"
												echo "2  - ZakĂˇzat"
												echo "------------"
												echo "1  - PĹ™Ă­chozĂ­"
												echo "-------------"
												while [ $cond -eq 0 ]
												do
												echo 
												echo "Zadejte IP adresu:"
												read -e readip
												echo "Zadejte port nebo 0 pro nĂˇvrat:"
												read -e readport
												 

													if [ $readport -eq 0 ]; then
														conc=0										
														cond=1	
										
														else
														echo "----------------------------------------------------------"
														ufw deny in from $readip to any port $readport	
														echo "----------------------------------------------------------"
													fi
												done												
											fi
											
											if [ $readc -eq 2 ]; then
												cond=0
												clear
												echo "-------------"
												echo "3  - Nastavit"
												echo "-------------"		
												echo "2  - Pravidla"
												echo "-------------"
												echo "1  - IP Adresa (+ Port)"
												echo "-----------------------"
												echo "2  - IP adresa + Port"
												echo "---------------------"
												echo "2  - ZakĂˇzat"
												echo "------------"
												echo "2  - OdchozĂ­"
												echo "-------------"
												while [ $cond -eq 0 ]
												do
												echo 
												echo "Zadejte IP adresu:"
												read -e readip
												echo "Zadejte port nebo 0 pro nĂˇvrat:"
												read -e readport
												 

													if [ $readport -eq 0 ]; then
														conc=0										
														cond=1	
										
														else
														echo "----------------------------------------------------------"
														ufw deny out from $readip to any port $readport	
														echo "----------------------------------------------------------"
													fi
												done												
											fi 
										done
									fi 
								done
							fi
						done
					fi

					if [ $read3 -eq 2 ]; then
						con2=1
						cona=0
						while [ $cona -eq 0 ]
						do
						clear
						echo "-------------"
						echo "3  - Nastavit"
						echo "-------------"		
						echo "2  - Pravidla"
						echo "-------------"
						echo "2  - Port"
						echo "---------"
						echo
						echo "0  - ZpÄ›t"
						echo "1  - Pouze Port"
						echo "2  - Rozsah PortĹŻ"
						echo "3 -  Protokol"
						echo "--"
						read -e reada

							if [ $reada -eq 0 ]; then
								con2=0
								cona=1
							fi 

							if [ $reada -eq 1 ]; then
								cona=1
								conb=0
								while [ $conb -eq 0 ]
								do
								clear
								echo "-------------"
								echo "3  - Nastavit"
								echo "-------------"		
								echo "2  - Pravidla"
								echo "-------------"
								echo "2  - Port"
								echo "---------"
								echo "1  - Pouze Port"
								echo "---------------"
								echo
								echo "0  - ZpÄ›t"
								echo "1  - Povolit"
								echo "2  - ZakĂˇzat"
								echo "--"
								read -e readb	

									if [ $readb -eq 0 ]; then
										cona=0							
										conb=1
									fi 
									
									if [ $readb -eq 1 ]; then							
										conb=1
										conc=0
										while [ $conc -eq 0 ]
										do
										clear
										echo "-------------"
										echo "3  - Nastavit"
										echo "-------------"		
										echo "2  - Pravidla"
										echo "-------------"
										echo "2  - Port"
										echo "---------"
										echo "1  - Pouze Port"
										echo "---------------"
										echo "1  - Povolit"
										echo "------------"	
										echo
										echo "0  - ZpÄ›t"
										echo "1  - PĹ™Ă­chozĂ­"
										echo "2  - OdchozĂ­"
										echo "--"
										read -e readc

											if [ $readc -eq 0 ]; then
												conb=0							
												conc=1
											fi 

											if [ $readc -eq 1 ]; then
												conc=1												
												cond=0
												while [ $cond -eq 0 ]
												do
												clear
												echo "-------------"
												echo "3  - Nastavit"
												echo "-------------"		
												echo "2  - Pravidla"
												echo "-------------"
												echo "2  - Port"
												echo "---------"
												echo "1  - Pouze Port"
												echo "---------------"
												echo "1  - Povolit"
												echo "------------"
												echo "1  - PĹ™Ă­chozĂ­"
												echo "-------------"
												echo 
												echo "0  - ZpÄ›t"
												echo "1  - TCP"
												echo "2  - UDP"
												echo "3  - VĹˇechny"
												echo "--"
												read -e readprot

													if [ $readprot -eq 0 ]; then
														conc=0							
														cond=1
													fi 

													if [ $readprot -eq 1 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "1  - Pouze Port"
														echo "---------------"
														echo "1  - Povolit"
														echo "------------"
														echo "1  - PĹ™Ă­chozĂ­"
														echo "-------------"
														echo "1  - TCP"
														echo "--------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte port nebo 0 pro nĂˇvrat:"
														read -e readd

															if [ $readd -eq 0 ]; then
																cond=0
																cone=1	
										
																else
																echo "----------------------------------------------------------"
																ufw allow in $readd/tcp
																echo "----------------------------------------------------------"
															fi
														done								
													fi

													if [ $readprot -eq 2 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "1  - Pouze Port"
														echo "---------------"
														echo "1  - Povolit"
														echo "------------"
														echo "1  - PĹ™Ă­chozĂ­"
														echo "-------------"
														echo "2  - UDP"
														echo "--------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte port nebo 0 pro nĂˇvrat:"
														read -e readd

															if [ $readd -eq 0 ]; then
																cond=0
																cone=1	
										
																else
																echo "----------------------------------------------------------"
																ufw allow in $readd/udp
																echo "----------------------------------------------------------"
															fi
														done								
													fi

													if [ $readprot -eq 3 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "1  - Pouze Port"
														echo "---------------"
														echo "1  - Povolit"
														echo "------------"
														echo "1  - PĹ™Ă­chozĂ­"
														echo "-------------"
														echo "3  - VĹˇechny"
														echo "------------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte port nebo 0 pro nĂˇvrat:"
														read -e readd

															if [ $readd -eq 0 ]; then
																cond=0
																cone=1
										
																else
																echo "----------------------------------------------------------"
																ufw allow in $readd
																echo "----------------------------------------------------------"
															fi
														done								
													fi
												done
											fi
											
											if [ $readc -eq 2 ]; then
												conc=1												
												cond=0
												while [ $cond -eq 0 ]
												do
												clear
												echo "-------------"
												echo "3  - Nastavit"
												echo "-------------"		
												echo "2  - Pravidla"
												echo "-------------"
												echo "2  - Port"
												echo "---------"
												echo "1  - Pouze Port"
												echo "---------------"
												echo "1  - Povolit"
												echo "------------"
												echo "2  - OdchozĂ­"
												echo "------------"
												echo 
												echo "0  - ZpÄ›t"
												echo "1  - TCP"
												echo "2  - UDP"
												echo "3  - VĹˇechny"
												echo "--"
												read -e readprot

													if [ $readprot -eq 0 ]; then
														conc=0							
														cond=1
													fi 

													if [ $readprot -eq 1 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "1  - Pouze Port"
														echo "---------------"
														echo "1  - Povolit"
														echo "------------"
														echo "2  - OdchozĂ­"
														echo "------------"
														echo "1  - TCP"
														echo "--------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte port nebo 0 pro nĂˇvrat:"
														read -e readd

															if [ $readd -eq 0 ]; then
																cond=0
																cone=1	
										
																else
																echo "----------------------------------------------------------"
																ufw allow out $readd/tcp
																echo "----------------------------------------------------------"
															fi
														done								
													fi

													if [ $readprot -eq 2 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "1  - Pouze Port"
														echo "---------------"
														echo "1  - Povolit"
														echo "------------"
														echo "2  - OdchozĂ­"
														echo "------------"
														echo "2  - UDP"
														echo "--------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte port nebo 0 pro nĂˇvrat:"
														read -e readd

															if [ $readd -eq 0 ]; then
																cond=0
																cone=1	
										
																else
																echo "----------------------------------------------------------"
																ufw allow out $readd/udp
																echo "----------------------------------------------------------"
															fi
														done								
													fi

													if [ $readprot -eq 3 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "1  - Pouze Port"
														echo "---------------"
														echo "1  - Povolit"
														echo "------------"
														echo "2  - OdchozĂ­"
														echo "-------------"
														echo "3  - VĹˇechny"
														echo "------------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte port nebo 0 pro nĂˇvrat:"
														read -e readd

															if [ $readd -eq 0 ]; then
																cond=0
																cone=1
										
																else
																echo "----------------------------------------------------------"
																ufw allow out $readd
																echo "----------------------------------------------------------"
															fi
														done								
													fi
												done
											fi 
										done
									fi

									if [ $readb -eq 2 ]; then							
										conb=1
										conc=0
										while [ $conc -eq 0 ]
										do
										clear
										echo "-------------"
										echo "3  - Nastavit"
										echo "-------------"		
										echo "2  - Pravidla"
										echo "-------------"
										echo "2  - Port"
										echo "---------"
										echo "1  - Pouze Port"
										echo "---------------"
										echo "2  - ZakĂˇzat"
										echo "------------"	
										echo
										echo "0  - ZpÄ›t"
										echo "1  - PĹ™Ă­chozĂ­"
										echo "2  - OdchozĂ­"
										echo "--"
										read -e readc

											if [ $readc -eq 0 ]; then
												conb=0							
												conc=1
											fi 

											if [ $readc -eq 1 ]; then
												conc=1												
												cond=0
												while [ $cond -eq 0 ]
												do
												clear
												echo "-------------"
												echo "3  - Nastavit"
												echo "-------------"		
												echo "2  - Pravidla"
												echo "-------------"
												echo "2  - Port"
												echo "---------"
												echo "1  - Pouze Port"
												echo "---------------"
												echo "2  - ZakĂˇzat"
												echo "------------"
												echo "1  - PĹ™Ă­chozĂ­"
												echo "-------------"
												echo 
												echo "0  - ZpÄ›t"
												echo "1  - TCP"
												echo "2  - UDP"
												echo "3  - VĹˇechny"
												echo "--"
												read -e readprot

													if [ $readprot -eq 0 ]; then
														conc=0							
														cond=1
													fi 

													if [ $readprot -eq 1 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "1  - Pouze Port"
														echo "---------------"
														echo "2  - ZakĂˇzat"
														echo "------------"
														echo "1  - PĹ™Ă­chozĂ­"
														echo "-------------"
														echo "1  - TCP"
														echo "--------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte port nebo 0 pro nĂˇvrat:"
														read -e readd

															if [ $readd -eq 0 ]; then
																cond=0
																cone=1	
										
																else
																echo "----------------------------------------------------------"
																ufw deny in $readd/tcp
																echo "----------------------------------------------------------"
															fi
														done								
													fi

													if [ $readprot -eq 2 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "1  - Pouze Port"
														echo "---------------"
														echo "2  - ZakĂˇzat"
														echo "------------"
														echo "1  - PĹ™Ă­chozĂ­"
														echo "-------------"
														echo "2  - UDP"
														echo "--------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte port nebo 0 pro nĂˇvrat:"
														read -e readd

															if [ $readd -eq 0 ]; then
																cond=0
																cone=1	
										
																else
																echo "----------------------------------------------------------"
																ufw deny in $readd/udp
																echo "----------------------------------------------------------"
															fi
														done								
													fi

													if [ $readprot -eq 3 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "1  - Pouze Port"
														echo "---------------"
														echo "2  - ZakĂˇzat"
														echo "------------"
														echo "1  - PĹ™Ă­chozĂ­"
														echo "-------------"
														echo "3  - VĹˇechny"
														echo "------------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte port nebo 0 pro nĂˇvrat:"
														read -e readd

															if [ $readd -eq 0 ]; then
																cond=0
																cone=1
										
																else
																echo "----------------------------------------------------------"
																ufw deny in $readd
																echo "----------------------------------------------------------"
															fi
														done								
													fi
												done
											fi
											
											if [ $readc -eq 2 ]; then
												conc=1												
												cond=0
												while [ $cond -eq 0 ]
												do
												clear
												echo "-------------"
												echo "3  - Nastavit"
												echo "-------------"		
												echo "2  - Pravidla"
												echo "-------------"
												echo "2  - Port"
												echo "---------"
												echo "1  - Pouze Port"
												echo "---------------"
												echo "2  - ZakĂˇzat"
												echo "------------"
												echo "2  - OdchozĂ­"
												echo "------------"
												echo 
												echo "0  - ZpÄ›t"
												echo "1  - TCP"
												echo "2  - UDP"
												echo "3  - VĹˇechny"
												echo "--"
												read -e readprot

													if [ $readprot -eq 0 ]; then
														conc=0							
														cond=1
													fi 

													if [ $readprot -eq 1 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "1  - Pouze Port"
														echo "---------------"
														echo "2  - ZakĂˇzat"
														echo "------------"
														echo "2  - OdchozĂ­"
														echo "------------"
														echo "1  - TCP"
														echo "--------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte port nebo 0 pro nĂˇvrat:"
														read -e readd

															if [ $readd -eq 0 ]; then
																cond=0
																cone=1	
										
																else
																echo "----------------------------------------------------------"
																ufw deny out $readd/tcp
																echo "----------------------------------------------------------"
															fi
														done								
													fi

													if [ $readprot -eq 2 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "1  - Pouze Port"
														echo "---------------"
														echo "2  - ZakĂˇzat"
														echo "------------"
														echo "2  - OdchozĂ­"
														echo "------------"
														echo "2  - UDP"
														echo "--------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte port nebo 0 pro nĂˇvrat:"
														read -e readd

															if [ $readd -eq 0 ]; then
																cond=0
																cone=1	
										
																else
																echo "----------------------------------------------------------"
																ufw deny out $readd/udp
																echo "----------------------------------------------------------"
															fi
														done								
													fi

													if [ $readprot -eq 3 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "1  - Pouze Port"
														echo "---------------"
														echo "2  - ZakĂˇzat"
														echo "------------"
														echo "2  - OdchozĂ­"
														echo "-------------"
														echo "3  - VĹˇechny"
														echo "------------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte port nebo 0 pro nĂˇvrat:"
														read -e readd

															if [ $readd -eq 0 ]; then
																cond=0
																cone=1
										
																else
																echo "----------------------------------------------------------"
																ufw deny out $readd
																echo "----------------------------------------------------------"
															fi
														done								
													fi
												done
											fi 
										done
									fi 
								done
							fi 

							if [ $reada -eq 2 ]; then
								cona=1
								conb=0
								while [ $conb -eq 0 ]
								do
								clear
								echo "-------------"
								echo "3  - Nastavit"
								echo "-------------"		
								echo "2  - Pravidla"
								echo "-------------"
								echo "2  - Port"
								echo "---------"
								echo "2  - Rozsah PortĹŻ"
								echo "-----------------"
								echo
								echo "0  - ZpÄ›t"
								echo "1  - Povolit"
								echo "2  - ZakĂˇzat"
								echo "--"
								read -e readb	

									if [ $readb -eq 0 ]; then
										cona=0							
										conb=1
									fi 
									
									if [ $readb -eq 1 ]; then							
										conb=1
										conc=0
										while [ $conc -eq 0 ]
										do
										clear
										echo "-------------"
										echo "3  - Nastavit"
										echo "-------------"		
										echo "2  - Pravidla"
										echo "-------------"
										echo "2  - Port"
										echo "---------"
										echo "2  - Rozsah PortĹŻ"
										echo "-----------------"
										echo "1  - Povolit"
										echo "------------"	
										echo
										echo "0  - ZpÄ›t"
										echo "1  - PĹ™Ă­chozĂ­"
										echo "2  - OdchozĂ­"
										echo "--"
										read -e readc

											if [ $readc -eq 0 ]; then
												conb=0							
												conc=1
											fi 

											if [ $readc -eq 1 ]; then
												conc=1												
												cond=0
												while [ $cond -eq 0 ]
												do
												clear
												echo "-------------"
												echo "3  - Nastavit"
												echo "-------------"		
												echo "2  - Pravidla"
												echo "-------------"
												echo "2  - Port"
												echo "---------"
												echo "2  - Rozsah PortĹŻ"
												echo "-----------------"
												echo "1  - Povolit"
												echo "------------"
												echo "1  - PĹ™Ă­chozĂ­"
												echo "-------------"
												echo 
												echo "0  - ZpÄ›t"
												echo "1  - TCP"
												echo "2  - UDP"
												echo "--"
												read -e readprot

													if [ $readprot -eq 0 ]; then
														conc=0							
														cond=1
													fi 

													if [ $readprot -eq 1 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "2  - Rozsah PortĹŻ"
														echo "-----------------"
														echo "1  - Povolit"
														echo "------------"
														echo "1  - PĹ™Ă­chozĂ­"
														echo "-------------"
														echo "1  - TCP"
														echo "--------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte poÄŤĂˇteÄŤnĂ­ port:"
														read -e readportstart
														echo "Zadejte koneÄŤnĂ˝ port nebo 0 pro nĂˇvrat:"
														read -e readportstop
														 
															if [ $readport -eq 0 ]; then
																cond=0
																cone=1	
										
																else
																echo "----------------------------------------------------------"
																ufw allow in proto tcp to any port $readportstart:$readportstop	
																echo "----------------------------------------------------------"
															fi
														done								
													fi

													if [ $readprot -eq 2 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "2  - Rozsah PortĹŻ"
														echo "-----------------"
														echo "1  - Povolit"
														echo "------------"
														echo "1  - PĹ™Ă­chozĂ­"
														echo "-------------"
														echo "2  - UDP"
														echo "--------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte poÄŤĂˇteÄŤnĂ­ port:"
														read -e readportstart
														echo "Zadejte koneÄŤnĂ˝ port nebo 0 pro nĂˇvrat:"
														read -e readportstop
														 
															if [ $readport -eq 0 ]; then
																cond=0
																cone=1	
										
																else
																echo "----------------------------------------------------------"
																ufw allow in proto udp to any port $readportstart:$readportstop	
																echo "----------------------------------------------------------"
															fi
														done								
													fi
												done
											fi
											
											if [ $readc -eq 2 ]; then
												conc=1												
												cond=0
												while [ $cond -eq 0 ]
												do
												clear
												echo "-------------"
												echo "3  - Nastavit"
												echo "-------------"		
												echo "2  - Pravidla"
												echo "-------------"
												echo "2  - Port"
												echo "---------"
												echo "2  - Rozsah PortĹŻ"
												echo "-----------------"
												echo "1  - Povolit"
												echo "------------"
												echo "2  - OdchozĂ­"
												echo "------------"
												echo 
												echo "0  - ZpÄ›t"
												echo "1  - TCP"
												echo "2  - UDP"
												echo "--"
												read -e readprot

													if [ $readprot -eq 0 ]; then
														conc=0							
														cond=1
													fi 

													if [ $readprot -eq 1 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "2  - Rozsah PortĹŻ"
														echo "-----------------"
														echo "1  - Povolit"
														echo "------------"
														echo "2  - OdchozĂ­"
														echo "------------"
														echo "1  - TCP"
														echo "--------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte poÄŤĂˇteÄŤnĂ­ port:"
														read -e readportstart
														echo "Zadejte koneÄŤnĂ˝ port nebo 0 pro nĂˇvrat:"
														read -e readportstop
														 
															if [ $readport -eq 0 ]; then
																cond=0
																cone=1	
										
																else
																echo "----------------------------------------------------------"
																ufw allow out proto tcp to any port $readportstart:$readportstop	
																echo "----------------------------------------------------------"
															fi
														done								
													fi

													if [ $readprot -eq 2 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "2  - Rozsah PortĹŻ"
														echo "-----------------"
														echo "1  - Povolit"
														echo "------------"
														echo "2  - OdchozĂ­"
														echo "------------"
														echo "2  - UDP"
														echo "--------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte poÄŤĂˇteÄŤnĂ­ port:"
														read -e readportstart
														echo "Zadejte koneÄŤnĂ˝ port nebo 0 pro nĂˇvrat:"
														read -e readportstop
														 
															if [ $readport -eq 0 ]; then
																cond=0
																cone=1	
										
																else
																echo "----------------------------------------------------------"
																ufw allow out proto udp to any port $readportstart:$readportstop	
																echo "----------------------------------------------------------"
															fi
														done								
													fi
												done
											fi 
										done
									fi

									if [ $readb -eq 2 ]; then							
										conb=1
										conc=0
										while [ $conc -eq 0 ]
										do
										clear
										echo "-------------"
										echo "3  - Nastavit"
										echo "-------------"		
										echo "2  - Pravidla"
										echo "-------------"
										echo "2  - Port"
										echo "---------"
										echo "2  - Rozsah PortĹŻ"
										echo "-----------------"
										echo "2  - ZakĂˇzat"
										echo "------------"	
										echo
										echo "0  - ZpÄ›t"
										echo "1  - PĹ™Ă­chozĂ­"
										echo "2  - OdchozĂ­"
										echo "--"
										read -e readc

											if [ $readc -eq 0 ]; then
												conb=0							
												conc=1
											fi 

											if [ $readc -eq 1 ]; then
												conc=1												
												cond=0
												while [ $cond -eq 0 ]
												do
												clear
												echo "-------------"
												echo "3  - Nastavit"
												echo "-------------"		
												echo "2  - Pravidla"
												echo "-------------"
												echo "2  - Port"
												echo "---------"
												echo "2  - Rozsah PortĹŻ"
												echo "-----------------"
												echo "2  - ZakĂˇzat"
												echo "------------"
												echo "1  - PĹ™Ă­chozĂ­"
												echo "-------------"
												echo 
												echo "0  - ZpÄ›t"
												echo "1  - TCP"
												echo "2  - UDP"
												echo "--"
												read -e readprot

													if [ $readprot -eq 0 ]; then
														conc=0							
														cond=1
													fi 

													if [ $readprot -eq 1 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "2  - Rozsah PortĹŻ"
														echo "-----------------"
														echo "2  - ZakĂˇzat"
														echo "------------"
														echo "1  - PĹ™Ă­chozĂ­"
														echo "-------------"
														echo "1  - TCP"
														echo "--------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte poÄŤĂˇteÄŤnĂ­ port:"
														read -e readportstart
														echo "Zadejte koneÄŤnĂ˝ port nebo 0 pro nĂˇvrat:"
														read -e readportstop
														 
															if [ $readport -eq 0 ]; then
																cond=0
																cone=1	
										
																else
																echo "----------------------------------------------------------"
																ufw deny in proto tcp to any port $readportstart:$readportstop	
																echo "----------------------------------------------------------"
															fi
														done								
													fi

													if [ $readprot -eq 2 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "2  - Rozsah PortĹŻ"
														echo "-----------------"
														echo "2  - ZakĂˇzat"
														echo "------------"
														echo "1  - PĹ™Ă­chozĂ­"
														echo "-------------"
														echo "2  - UDP"
														echo "--------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte poÄŤĂˇteÄŤnĂ­ port:"
														read -e readportstart
														echo "Zadejte koneÄŤnĂ˝ port nebo 0 pro nĂˇvrat:"
														read -e readportstop
														 
															if [ $readport -eq 0 ]; then
																cond=0
																cone=1	
										
																else
																echo "----------------------------------------------------------"
																ufw deny in proto udp to any port $readportstart:$readportstop	
																echo "----------------------------------------------------------"
															fi
														done								
													fi
												done
											fi
											
											if [ $readc -eq 2 ]; then
												conc=1												
												cond=0
												while [ $cond -eq 0 ]
												do
												clear
												echo "-------------"
												echo "3  - Nastavit"
												echo "-------------"		
												echo "2  - Pravidla"
												echo "-------------"
												echo "2  - Port"
												echo "---------"
												echo "2  - Rozsah PortĹŻ"
												echo "-----------------"
												echo "2  - ZakĂˇzat"
												echo "------------"
												echo "2  - OdchozĂ­"
												echo "------------"
												echo 
												echo "0  - ZpÄ›t"
												echo "1  - TCP"
												echo "2  - UDP"
												echo "3  - VĹˇechny"
												echo "--"
												read -e readprot

													if [ $readprot -eq 0 ]; then
														conc=0							
														cond=1
													fi 

													if [ $readprot -eq 1 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "2  - Rozsah PortĹŻ"
														echo "-----------------"
														echo "2  - ZakĂˇzat"
														echo "------------"
														echo "2  - OdchozĂ­"
														echo "------------"
														echo "1  - TCP"
														echo "--------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte poÄŤĂˇteÄŤnĂ­ port:"
														read -e readportstart
														echo "Zadejte koneÄŤnĂ˝ port nebo 0 pro nĂˇvrat:"
														read -e readportstop
														 
															if [ $readport -eq 0 ]; then
																cond=0
																cone=1	
										
																else
																echo "----------------------------------------------------------"
																ufw deny out proto tcp to any port $readportstart:$readportstop	
																echo "----------------------------------------------------------"
															fi
														done								
													fi

													if [ $readprot -eq 2 ]; then
														cond=1							
														cone=0
														clear
														echo "-------------"
														echo "3  - Nastavit"
														echo "-------------"		
														echo "2  - Pravidla"
														echo "-------------"
														echo "2  - Port"
														echo "---------"
														echo "2  - Rozsah PortĹŻ"
														echo "-----------------"
														echo "2  - ZakĂˇzat"
														echo "------------"
														echo "2  - OdchozĂ­"
														echo "------------"
														echo "2  - UDP"
														echo "--------"
														echo 
														while [ $cone -eq 0 ]
														do
														echo "Zadejte poÄŤĂˇteÄŤnĂ­ port:"
														read -e readportstart
														echo "Zadejte koneÄŤnĂ˝ port nebo 0 pro nĂˇvrat:"
														read -e readportstop
														 
															if [ $readport -eq 0 ]; then
																cond=0
																cone=1	
										
																else
																echo "----------------------------------------------------------"
																ufw deny out proto udp to any port $readportstart:$readportstop	
																echo "----------------------------------------------------------"
															fi
														done							
													fi
												done
											fi 
										done
									fi
								done
							fi
						done
					fi

					if [ $read3 -eq 3 ]; then
						con2=1
						conb=0
						while [ $conb -eq 0 ]
						do
						clear
						echo "-------------"
						echo "3  - Nastavit"
						echo "-------------"		
						echo "2  - Pravidla"
						echo "-------------"
						echo "3  - SluĹľby"
						echo "-----------"
						echo
						echo "0  - ZpÄ›t"
						echo "1  - Povolit"
						echo "2  - ZakĂˇzat"
						echo "3  - Zobrazit seznam sluĹľeb (CTRL + X pro nĂˇvrat)"
						echo "--"
						read -e readb	

							if [ $readb -eq 0 ]; then
								con2=0						
								conb=1
							fi 
									
							if [ $readb -eq 1 ]; then							
								conb=1
								conc=0
								while [ $conc -eq 0 ]
								do
								clear
								echo "-------------"
								echo "3  - Nastavit"
								echo "-------------"		
								echo "2  - Pravidla"
								echo "-------------"
								echo "3  - SluĹľby"
								echo "-----------"
								echo "1  - Povolit"
								echo "------------"	
								echo
								echo "0  - ZpÄ›t"
								echo "1  - PĹ™Ă­chozĂ­"
								echo "2  - OdchozĂ­"
								echo "--"
								read -e readc

									if [ $readc -eq 0 ]; then
										conb=0							
										conc=1
									fi

									if [ $readc -eq 1 ]; then
										conc=1
										cond=0
										clear
										echo "-------------"
										echo "3  - Nastavit"
										echo "-------------"		
										echo "2  - Pravidla"
										echo "-------------"
										echo "3  - SluĹľby"
										echo "-----------"
										echo "1  - Povolit"
										echo "------------"
										echo "1  - PĹ™Ă­chozĂ­"
										echo "-------------"
										echo 
										while [ $cond -eq 0 ]
										do
										echo "Zadejte nĂˇzev sluĹľby nebo zpÄ›t pro nĂˇvrat:"
										read -e readd

											if [ $readd == "zpÄ›t" ]; then
												conc=0										
												cond=1	
										
												else
												echo "----------------------------------------------------------"
												ufw allow in $readd	
												echo "----------------------------------------------------------"
											fi
										done												
									fi
											
									if [ $readc -eq 2 ]; then
										conc=1
										cond=0
										clear
										echo "-------------"
										echo "3  - Nastavit"
										echo "-------------"		
										echo "2  - Pravidla"
										echo "-------------"
										echo "3  - SluĹľby"
										echo "-----------"
										echo "1  - Povolit"
										echo "------------"
										echo "2  - OdchozĂ­"
										echo "------------"
										while [ $cond -eq 0 ]
										do
										echo "Zadejte nĂˇzev sluĹľby nebo zpÄ›t pro nĂˇvrat:"
										read -e readd

											if [ $readd == "zpÄ›t" ]; then
												conc=0										
												cond=1	
										
												else
												echo "----------------------------------------------------------"
												ufw allow out $readd	
												echo "----------------------------------------------------------"
											fi
										done
									fi
								done
							fi

							if [ $readb -eq 2 ]; then							
								conb=1
								conc=0
								while [ $conc -eq 0 ]
								do
								clear
								echo "-------------"
								echo "3  - Nastavit"
								echo "-------------"		
								echo "2  - Pravidla"
								echo "-------------"
								echo "3  - SluĹľby"
								echo "-----------"
								echo "2  - ZakĂˇzat"
								echo "------------"	
								echo
								echo "0  - ZpÄ›t"
								echo "1  - PĹ™Ă­chozĂ­"
								echo "2  - OdchozĂ­"
								echo "--"
								read -e readc

									if [ $readc -eq 0 ]; then
										conb=0							
										conc=1
									fi 

									if [ $readc -eq 1 ]; then
										conc=1
										cond=0
										clear
										echo "-------------"
										echo "3  - Nastavit"
										echo "-------------"		
										echo "2  - Pravidla"
										echo "-------------"
										echo "3  - SluĹľby"
										echo "------------"
										echo "2  - ZakĂˇzat"
										echo "------------"
										echo "1  - PĹ™Ă­chozĂ­"
										echo "-------------"
										while [ $cond -eq 0 ]
										do
										echo 
										echo "Zadejte nĂˇzev sluĹľby nebo zpÄ›t pro nĂˇvrat:"
										read -e readd
											if [ $readd == "zpÄ›t" ]; then
												conc=0										
												cond=1	
								
												else
												echo "----------------------------------------------------------"
												ufw deny in $readd	
												echo "----------------------------------------------------------"
											fi
										done												
									fi
											
									if [ $readc -eq 2 ]; then
										conc=1
										cond=0
										clear
										echo "-------------"
										echo "3  - Nastavit"
										echo "-------------"		
										echo "2  - Pravidla"
										echo "-------------"
										echo "3  - SluĹľby"
										echo "------------"
										echo "2  - ZakĂˇzat"
										echo "------------"
										echo "2  - OdchozĂ­"
										echo "------------"
										while [ $cond -eq 0 ]
										do
										echo 
										echo "Zadejte nĂˇzev sluĹľby nebo zpÄ›t pro nĂˇvrat:"
										read -e readd
											if [ $readd == "zpÄ›t" ]; then
												conc=0										
												cond=1	
								
												else
												echo "----------------------------------------------------------"
												ufw deny out $readd	
												echo "----------------------------------------------------------"
											fi
										done
									fi 
								done
							fi 

							if [ $readb -eq 3 ]; then
								nano -v /etc/services
							fi
						done
					fi

					if [ $read3 -eq 5 ]; then
						con2=1
						con3=0
						while [ $con3 -eq 0 ]
						do
						clear
						ufw status numbered
						echo
						echo "Zadejte ÄŤĂ­slo pravidla pro smazĂˇnĂ­ nebo 0 pro nĂˇvrat:"
						read -e read4

							if [ $read4 -eq 0 ]; then
								con2=0							
								con3=1

								else	
								echo "----------------------------------------------------------"
								ufw delete $read4
								echo "----------------------------------------------------------"
							fi 
						done 
					fi
				done
			fi

			if [ $read2 -eq 3 ]; then
				con1=1
				con2=0
				clear
				echo "-------------"
				echo "3  - Nastavit"
				echo "-------------"		
				echo "3  - Limity"
				echo "-----------"
				while [ $con2 -eq 0 ]
				do
				echo 
				echo "Zadejte nĂˇzev sluĹľby, "\"zobrazit\"" pro zobrazenĂ­ sluĹľeb"
				echo "nebo "\"zpÄ›t\"" pro nĂˇvrat:"
				read -e read4

					if [ $read4 == "zpÄ›t" ]; then
						con1=0							
						con2=1
					
						else

							if [ $read4 == "zobrazit" ]; then
								nano -v /etc/services
							fi 
						echo "----------------------------------------------------------"
						ufw limit $read4
						echo "----------------------------------------------------------"
					fi 	
				done
			fi 

			if [ $read2 -eq 4 ]; then
				con1=1
				con2=0
				clear
				echo "-------------"
				echo "3  - Nastavit"
				echo "-------------"		
				echo "4  - LogovĂˇnĂ­"
				echo "-------------"
				while [ $con2 -eq 0 ]
				do
				echo "Legenda:"
				echo "----------------------------------------------------------"
 				echo ""\"off\""    - zakĂˇĹľe logovĂˇnĂ­."
				echo
				echo ""\"low\""    - vĹˇechny poĹľadavky, kterĂ© nesoulasĂ­" 
				echo "           s nastavenĂ­m. (limitovĂˇno)"
				echo
				echo ""\"medium\"" - vĹˇechny poĹľadavky, kterĂ© nesoulasĂ­" 
				echo "           s nastavenĂ­m, chybnĂ© poĹľadavky a novĂ©" 
				echo "           spojenĂ­. (limitovĂˇno)"
				echo
				echo ""\"high\""   - vĹˇechny poĹľadavky. (limitovĂˇno)"
				echo
				echo ""\"full\""   - vĹˇechny poĹľadavky. (bez limitu)"
				echo "----------------------------------------------------------"
				echo "Zadejte level pro logovĂˇnĂ­ nebo "\"zpÄ›t\"" pro nĂˇvrat:"
				echo "--------"
				read -e read4

					if [ $read4 == "zpÄ›t" ]; then
						con1=0							
						con2=1
					
						else
						echo "--------------------------------------------"
						ufw logging $read4
						echo "--------------------------------------------"
						echo "Soubor naleznete ve sloĹľce: /var/log/ufw.log"
						echo "--------------------------------------------"
					fi 
				done	
			fi 
		done
	fi
done

";i:1;s:4:"bash";i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6;}}