# AT89S52 Traffic Light

A basic traffic light system for the AT89S52 micro controller programed in assembaly

## How it works
There are 4 traffic light and only one traffic light is green at any time although this can be changed very easily to allow to traffic lights to be greaan at one time the code it programmed so that you can make any state you want

### Installing

In order to run the code on your microcontroller you need Progisp 

```
download from here : [progisp](https://search.edaboard.com/progisp.html)
```
## Deployment

Each traffic light has 4 states you can change them at
```
 ;an example state for traffic light 4 it's at pin 3 (pins start from 0) we set the pin3.0 to and pins3.1 and 3.2 are off pin 0 
 T3S1:
  setb P3.0 ;green light
  clr p3.1 ; yellow light
  clr p3.2 ; red light
  RET
```
## Authors
```
  Seyed Matin Mazloom Nezhad
  Ayoob Mohammed Hassan	
  Omar Abdelmoamen Amin 
```
## License
free to use anywhere this was built for a university project


