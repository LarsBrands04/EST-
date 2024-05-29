% initializing serial port
 s = serial ( ' COM5 ' , ' BaudRate ' , 9600) ; % Adjust COM port as needed
fopen ( s ) ;

 % variables for storing data
 pressureData = [];
 airflowData = [];

 % reading and storing data from serial port
 try
 while true
 % reading data from serial port
 data = fgetl ( s ) ;

 % spliting values ( sparated them by comma in the previous code )
 C = strsplit ( data , ' , ') ;
 pressureValue = str2double ( C {1}) ;
 airflowValue = str2double ( C {2}) ;

 % storing data
 pressureData = [ pressureData ; pressureValue ];
 airflowData = [ airflowData ; airflowValue ];
 end
 catch
 % closing serial port ( if needed )
 fclose ( s ) ;
 end
% saveing data to file ( optional )
 save ( ' sensor_data . mat ' , ' pressureData ' , ' airflowData ') ;

 % closing the serial port
 fclose ( s ) ;

