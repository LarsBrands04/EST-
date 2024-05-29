# EST arduino and matlab code
Arduino

The Arduino code provided is able when connected to the power, arduino and sensor to measure the data it outputs. This is done with the mapping function, the mapping is needed and works as the following. When working with analog sensors, such as a pressure sensor that outputs a voltage proportional to the measured pressure, it’s essential to convert the sensor’s voltage output into meaningful units. In this case, the sensor provides an analog voltage between 1V and 5V corresponding to a pressure range of 0 to 1 mPa. The Arduino’s analogto-digital converter (ADC) reads this voltage as a raw value between 0 and 1023. To accurately interpret the sensor’s readings and convert them into the desired pressure values, we use mapping. Mapping re-scales the ADC values from their original range (corresponding to 1V-5V) to the specified pressure 1 range (0-1 mPa), ensuring that the sensor’s output is correctly translated into useful pressure measurements. This allows for precise monitoring and utilization of the sensor data within the application. 
Another thing that can be noticed is that when the air flow value gets less then 20 L/min it is converted to a 0, this is hardcoded as it should not get to these values.

Matlab

The Matlab code continuously reads lines of data, split by commas into pressure and airflow values, which are then converted from strings to double precision numbers. These values are stored in arrays for later analysis. The code includes error handling to ensure the serial port is closed properly in case of any issues. Finally, the collected data could be saved to a file named sensor_data.mat for further processing or analysis. Also there is a small code commented below for plotting the data.
