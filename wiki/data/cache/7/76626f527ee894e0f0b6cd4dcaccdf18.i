a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:5:"250GB";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:9089:"
smartctl 6.2 2013-07-26 r3841 [i686-linux-3.13.0-34-generic] (local build)
Copyright (C) 2002-13, Bruce Allen, Christian Franke, www.smartmontools.org

=== START OF INFORMATION SECTION ===
Model Family:     Western Digital Caviar SE16 Serial ATA
Device Model:     WDC WD2500KS-00MJB0
Serial Number:    WD-WCANK5582466
Firmware Version: 02.01C03
User Capacity:    250 058 268 160 bytes [250 GB]
Sector Size:      512 bytes logical/physical
Device is:        In smartctl database [for details use: -P show]
ATA Version is:   ATA/ATAPI-7 (minor revision not indicated)
Local Time is:    Wed Jul  8 16:11:53 2015 CEST
SMART support is: Available - device has SMART capability.
SMART support is: Enabled

=== START OF READ SMART DATA SECTION ===
SMART overall-health self-assessment test result: PASSED
See vendor-specific Attribute list for marginal Attributes.

General SMART Values:
Offline data collection status:  (0x82)	Offline data collection activity
					was completed without error.
					Auto Offline Data Collection: Enabled.
Self-test execution status:      (   0)	The previous self-test routine completed
					without error or no self-test has ever 
					been run.
Total time to complete Offline 
data collection: 		( 7080) seconds.
Offline data collection
capabilities: 			 (0x7b) SMART execute Offline immediate.
					Auto Offline data collection on/off support.
					Suspend Offline collection upon new
					command.
					Offline surface scan supported.
					Self-test supported.
					Conveyance Self-test supported.
					Selective Self-test supported.
SMART capabilities:            (0x0003)	Saves SMART data before entering
					power-saving mode.
					Supports SMART auto save timer.
Error logging capability:        (0x01)	Error logging supported.
					General Purpose Logging supported.
Short self-test routine 
recommended polling time: 	 (   2) minutes.
Extended self-test routine
recommended polling time: 	 (  83) minutes.
Conveyance self-test routine
recommended polling time: 	 (   6) minutes.
SCT capabilities: 	       (0x103f)	SCT Status supported.
					SCT Error Recovery Control supported.
					SCT Feature Control supported.
					SCT Data Table supported.

SMART Attributes Data Structure revision number: 16
Vendor Specific SMART Attributes with Thresholds:
ID# ATTRIBUTE_NAME          FLAG     VALUE WORST THRESH TYPE      UPDATED  WHEN_FAILED RAW_VALUE
  1 Raw_Read_Error_Rate     0x000f   200   200   051    Pre-fail  Always       -       3240
  3 Spin_Up_Time            0x0003   192   179   021    Pre-fail  Always       -       5391
  4 Start_Stop_Count        0x0032   096   096   000    Old_age   Always       -       4941
  5 Reallocated_Sector_Ct   0x0033   196   196   140    Pre-fail  Always       -       31
  7 Seek_Error_Rate         0x000f   200   200   051    Pre-fail  Always       -       0
  9 Power_On_Hours          0x0032   063   063   000    Old_age   Always       -       27142
 10 Spin_Retry_Count        0x0013   100   100   051    Pre-fail  Always       -       0
 11 Calibration_Retry_Count 0x0012   100   100   051    Old_age   Always       -       0
 12 Power_Cycle_Count       0x0032   096   096   000    Old_age   Always       -       4784
190 Airflow_Temperature_Cel 0x0022   068   039   045    Old_age   Always   In_the_past 32
194 Temperature_Celsius     0x0022   118   089   000    Old_age   Always       -       32
196 Reallocated_Event_Count 0x0032   194   194   000    Old_age   Always       -       6
197 Current_Pending_Sector  0x0012   200   200   000    Old_age   Always       -       0
198 Offline_Uncorrectable   0x0010   200   200   000    Old_age   Offline      -       0
199 UDMA_CRC_Error_Count    0x003e   200   200   000    Old_age   Always       -       157
200 Multi_Zone_Error_Rate   0x0009   200   200   051    Pre-fail  Offline      -       0

SMART Error Log Version: 1
ATA Error Count: 7018 (device log contains only the most recent five errors)
	CR = Command Register [HEX]
	FR = Features Register [HEX]
	SC = Sector Count Register [HEX]
	SN = Sector Number Register [HEX]
	CL = Cylinder Low Register [HEX]
	CH = Cylinder High Register [HEX]
	DH = Device/Head Register [HEX]
	DC = Device Command Register [HEX]
	ER = Error register [HEX]
	ST = Status register [HEX]
Powered_Up_Time is measured from power on, and printed as
DDd+hh:mm:SS.sss where DD=days, hh=hours, mm=minutes,
SS=sec, and sss=millisec. It "wraps" after 49.710 days.

Error 7018 occurred at disk power-on lifetime: 21865 hours (911 days + 1 hours)
  When the command that caused the error occurred, the device was active or idle.

  After command completion occurred, registers were:
  ER ST SC SN CL CH DH
  -- -- -- -- -- -- --
  04 53 01 e0 4f c2 00  Error: ABRT

  Commands leading to the command that caused the error were:
  CR FR SC SN CL CH DH DC   Powered_Up_Time  Command/Feature_Name
  -- -- -- -- -- -- -- --  ----------------  --------------------
  b0 d6 01 e0 4f c2 00 00  44d+21:59:32.288  SMART WRITE LOG
  b0 d5 01 e0 4f c2 00 00  44d+21:59:32.287  SMART READ LOG
  ec 00 01 00 00 00 00 00  44d+21:59:32.276  IDENTIFY DEVICE
  ec 00 01 00 00 00 00 00  44d+21:59:32.275  IDENTIFY DEVICE
  35 00 08 a0 1f 44 17 00  44d+21:59:29.159  WRITE DMA EXT

Error 7017 occurred at disk power-on lifetime: 13157 hours (548 days + 5 hours)
  When the command that caused the error occurred, the device was active or idle.

  After command completion occurred, registers were:
  ER ST SC SN CL CH DH
  -- -- -- -- -- -- --
  40 51 00 00 45 51 e0  Error: UNC at LBA = 0x00514500 = 5326080

  Commands leading to the command that caused the error were:
  CR FR SC SN CL CH DH DC   Powered_Up_Time  Command/Feature_Name
  -- -- -- -- -- -- -- --  ----------------  --------------------
  25 00 00 00 46 51 00 00      02:49:11.631  READ DMA EXT
  25 00 00 00 45 51 00 00      02:49:09.781  READ DMA EXT
  25 00 00 00 44 51 00 00      02:49:09.777  READ DMA EXT
  25 00 00 00 43 51 00 00      02:49:09.775  READ DMA EXT
  25 00 00 00 42 51 00 00      02:49:09.773  READ DMA EXT

Error 7016 occurred at disk power-on lifetime: 13157 hours (548 days + 5 hours)
  When the command that caused the error occurred, the device was active or idle.

  After command completion occurred, registers were:
  ER ST SC SN CL CH DH
  -- -- -- -- -- -- --
  40 51 08 c8 23 4a e0  Error: UNC 8 sectors at LBA = 0x004a23c8 = 4858824

  Commands leading to the command that caused the error were:
  CR FR SC SN CL CH DH DC   Powered_Up_Time  Command/Feature_Name
  -- -- -- -- -- -- -- --  ----------------  --------------------
  25 00 08 c8 23 4a 00 00      02:49:07.513  READ DMA EXT
  35 00 48 a8 6a 6a 00 00      02:49:07.510  WRITE DMA EXT
  25 00 48 60 6a 6a 00 00      02:49:07.476  READ DMA EXT
  35 00 00 58 08 4d 09 00      02:49:07.470  WRITE DMA EXT
  35 00 00 58 07 4d 09 00      02:49:07.469  WRITE DMA EXT

Error 7015 occurred at disk power-on lifetime: 13157 hours (548 days + 5 hours)
  When the command that caused the error occurred, the device was active or idle.

  After command completion occurred, registers were:
  ER ST SC SN CL CH DH
  -- -- -- -- -- -- --
  40 51 00 00 45 51 e0  Error: UNC at LBA = 0x00514500 = 5326080

  Commands leading to the command that caused the error were:
  CR FR SC SN CL CH DH DC   Powered_Up_Time  Command/Feature_Name
  -- -- -- -- -- -- -- --  ----------------  --------------------
  25 00 00 00 46 51 00 00      02:48:41.998  READ DMA EXT
  25 00 00 00 45 51 00 00      02:48:40.094  READ DMA EXT
  25 00 00 00 44 51 00 00      02:48:40.090  READ DMA EXT
  25 00 00 00 43 51 00 00      02:48:40.088  READ DMA EXT
  25 00 00 00 42 51 00 00      02:48:40.086  READ DMA EXT

Error 7014 occurred at disk power-on lifetime: 13157 hours (548 days + 5 hours)
  When the command that caused the error occurred, the device was active or idle.

  After command completion occurred, registers were:
  ER ST SC SN CL CH DH
  -- -- -- -- -- -- --
  40 51 08 c8 23 4a e0  Error: WP 8 sectors at LBA = 0x004a23c8 = 4858824

  Commands leading to the command that caused the error were:
  CR FR SC SN CL CH DH DC   Powered_Up_Time  Command/Feature_Name
  -- -- -- -- -- -- -- --  ----------------  --------------------
  35 00 18 18 d1 5f 00 00      02:48:39.765  WRITE DMA EXT
  25 00 08 c8 23 4a 00 00      02:48:37.890  READ DMA EXT
  35 00 48 60 6a 6a 00 00      02:48:37.886  WRITE DMA EXT
  25 00 48 48 aa 69 00 00      02:48:37.876  READ DMA EXT
  35 00 08 f8 27 63 00 00      02:48:37.876  WRITE DMA EXT

SMART Self-test log structure revision number 1
No self-tests have been logged.  [To run self-tests, use: smartctl -t]


SMART Selective self-test log data structure revision number 1
 SPAN  MIN_LBA  MAX_LBA  CURRENT_TEST_STATUS
    1        0        0  Not_testing
    2        0        0  Not_testing
    3        0        0  Not_testing
    4        0        0  Not_testing
    5        0        0  Not_testing
Selective self-test flags (0x0):
  After scanning selected spans, do NOT read-scan remainder of disk.
If Selective self-test is pending on power-up, resume after 0 minute delay.
";i:1;s:4:"bash";i:2;N;}i:2;i:25;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:9128;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:9128;}}