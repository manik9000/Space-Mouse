#include <Wire.h> //Include the Wire library
#include <MMA_7455.h> //Include the MMA_7455 library

MMA_7455 mySensor = MMA_7455(); //Make an instance of MMA_7455

char xVal, yVal, zVal; //Variables for the values from the sensor

void setup()
{
  Serial.begin(2400);
    Serial.flush();
  mySensor.initSensitivity(4);
}

void loop()
{
  //for(int i = 0; i < 30; i += 1)  // goes from 0 degrees to 180 degrees 
  //{                                  // in steps of 1 degree 
  Serial.write(mySensor.readAxis('x'));
  Serial.write(mySensor.readAxis('y'));
  Serial.write(mySensor.readAxis('z'));
  Serial.write('w');
  //} 
  /*
  xVal = ; //Read out the 'x' Axis
  yVal = ; //Read out the 'y' Axis
  zVal = ; //Read out the 'z' Axis
*/
}
