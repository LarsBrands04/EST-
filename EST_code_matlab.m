% initializing serial port
 s = serial( ' COM5 ' , ' BaudRate ' , 9600) ; % Adjust COM port as needed
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%plot(P1,velocity2)
%set(gca,'xdir','reverse')
%title('Pressure vs Velocity')
%xlabel('Pressure in the tank')
%ylabel('Square of the velocity of the air flowing out')

%hold on

%dh=0.008; % diameter of the hose
%A=pi*dh^2; % crossectional area of the hose
%plot(pressureData, (airflowData/A)^2, 'o-');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% saveing data to file (optional)
%save('sensor_data.mat', 'pressureData', 'airflowData');

