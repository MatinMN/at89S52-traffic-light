# AT89S52 Traffic Light

A basic traffic light system for the AT89S52 micro controller programed in assembaly
[video](https://www.youtube.com/watch?v=-81RPznsBI8)

## How it works
There are 4 traffic light and only one traffic light is green at any time although this can be changed very easily to allow to traffic lights to be greaan at one time the code it programmed so that you can make any state you want

### Installing

In order to run the code on your microcontroller you need Progisp 

[progisp](https://search.edaboard.com/progisp.html)

## Deployment

The system is controlled with states each state defines the state of each indivisual traffic light (each traffic light has 4 state green,yellow,red,green-yellow)
```
; pin 0 for traffic 1
; pin 1 for traffic 2
; pin 2 for traffic 3
; pin 3 for traffic 4
```
here is how the states are configured
```
 STATE1: MOV R3,#20d ; this line sets the time this state will take
	ACALL T0S1 ; T0S1 is a function that sets the state for traffic light 0 to state 1 (green)
	acall t1s3
	acall t2s3
	acall t3s3
	acall del ; this function call sets up a delay and then moves to the next state

STATE2: MOV R3,#20d 
	ACALL T0S2
	acall t1s4
	acall t2s3
	acall t3s3
	acall del
```
## Other Authors
```
-  Ayoob Mohammed Hassan	
-  Omar Abdelmoamen Amin 
```
## License
free to use anywhere this was built for a university project


