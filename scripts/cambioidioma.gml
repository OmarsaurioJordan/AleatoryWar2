//0:ingles, 1:español
with(control){
if(argument0=1){
info[0]=" : numero de zombies (0-37)";
info[1]=" : vida de unidades (1-10)";
info[2]=" : velocidad de desplazamiento (6-18)";
info[3]=" : municion de unidades(1-8)";
info[4]=" : velocidad de flechas (30-50)";
info[5]=" : tiempo existencia de flechas (10-30)";
info[6]=" : tiempo cambio movimiento azar (10-40)";
info[7]=" : distancia de vision (400-700)";
info[8]=" : frac. distancia de ataque (0.6-0.9)";
info[9]=" : frac. distancia minima a enemigo (0.1-0.4)";
info[10]=" : frac. distancia maxima a enemigo (0.6-0.9)";
info[11]=" : frac. distancia minima en recarga (0.4-0.8)";
info[12]=" : angulo maximo de huida (20-60)";
info[13]=" : angulo maximo errar tiro (0-20)";
info[14]=" : retraso entre tiros (0.2-2)";
info[15]=" : retraso recargando municion (0.4-4)";
info[16]=" : ganar vida al matar (0-1)";
info[17]=" : sumar muertes equilibradamente (0-1)";
info[18]=" : ganar en grupo vs bombas (0-1)";
info[19]=" : sangre y manchar suelo (0-1)";
info[20]=" : ir al centro al iniciar (0-1)";
info[21]=" : IA agrupada por: 1nombre, 2grupo (0-2)";
especiales="Nombres Especiales:#
#Player: manejo W,A,S,D,E, mouse.
#P1: manejo W,A,S,D,E.
#P2: manejo up,left,down,right,shift.
#P3: manejo U,H,J,K,I.
#P4: manejo numpad 5,1,2,3,6.
#Predator, Asesino: maxima vida al matar.
#T_Rex, Diodo: gana vida al matar bombas.
#Hulk, Tanke: 16 puntos vida.
#Rambo, Bond: maxima velocidad entre tiros.
#Flash, Jaguar: maxima velocidad desplazamiento.
#Einstein, Newton: flechas rebotan.
#Lizard, Lagarto: regeneracion vida con tiempo.
#Terminator, Hellsing: +vel. de tiros y recarga.
#Leonidas, Hercules: +1 vida al recargar.
#Tarzan, Woody: maximo errar tiro.
#Master, Sensei: tiro preciso.
#Jack, Frijol: crea arbol al matar.
#Spartan, Clon: +1 vida a spartans o clons al morir.
#Rock, Linux: media o + vida a grupo al morir.
#Joker, Magus: maxima vida a grupo al morir.
#Thor, Draco: maxima velocidad flechas.
#Golem, Mole: +3 puntos vida.
#Pi, Web: no atrae bombas.
#Fenix, Thrall: municion infinita.
#Chavo, Homero: no ataca.
#Tesla, 220v: 20% evade flechas.
#Zombie: sangre verde y -2 puntos vida.
#Boss: 60 puntos vida.
#Dr_Manhattan: inmortal.";
if(instance_exists(organizador)){
organizador.acercade="La funcion de este menu
#es poder reubicar instancias
#sin saber donde estan las
#otras, por ejemplo para
#hacer apuestas entre personas
#cada quien pone en donde
#desee su personaje, turnandose
#para que nadie vea donde se
#pusieron los anteriores.";}}
else{
info[0]=" : number of zombies (0-37)";
info[1]=" : units life points (1-10)";
info[2]=" : movement speed (6-18)";
info[3]=" : units ammunition(1-8)";
info[4]=" : arrows speed (30-50)";
info[5]=" : arrows life time (10-30)";
info[6]=" : random time of change movement (10-40)";
info[7]=" : units view distance (400-700)";
info[8]=" : frac. attack distance (0.6-0.9)";
info[9]=" : frac. minimum enemy distance (0.1-0.4)";
info[10]=" : frac. maximum enemy distance (0.6-0.9)";
info[11]=" : frac. reload minimum distance (0.4-0.8)";
info[12]=" : maximum angle of flee (20-60)";
info[13]=" : maximum angle of err shot (0-20)";
info[14]=" : delay between shots (0.2-2)";
info[15]=" : delay recharging ammunition (0.4-4)";
info[16]=" : gain life by kill (0-1)";
info[17]=" : add balanced deaths (0-1)";
info[18]=" : win in group vs bombs (0-1)";
info[19]=" : blood and floor spotting (0-1)";
info[20]=" : go to center at start (0-1)";
info[21]=" : AI grouped for: 1name, 2group (0-2)";
especiales="Special Names:#
#Player: usage W,A,S,D,E, mouse.
#P1: usage W,A,S,D,E.
#P2: usage up,left,down,right,shift.
#P3: usage U,H,J,K,I.
#P4: usage numpad 5,1,2,3,6.
#Predator, Asesino: maximum life by kill.
#T_Rex, Diodo: gain life killing bombs.
#Hulk, Tanke: 16 life points.
#Rambo, Bond: maximum speed between shots.
#Flash, Jaguar: maximum movement speed.
#Einstein, Newton: bounce arrows.
#Lizard, Lagarto: life regeneration with time.
#Terminator, Hellsing: +speed of shots and reload.
#Leonidas, Hercules: +1 lifes at recharge.
#Tarzan, Woody: maximum err shot.
#Master, Sensei: precise shot.
#Jack, Frijol: create tree when kill.
#Spartan, Clon: +1 life to spartans or clons at death.
#Rock, Linux: medium or + life to group at death.
#Joker, Magus: maximum life to group at death.
#Thor, Draco: maximum speed of arrows.
#Golem, Mole: +3 life points.
#Pi, Web: not attract bombs.
#Fenix, Thrall: infinite ammunition.
#Chavo, Homero: not attack.
#Tesla, 220v: 20% avoid arrows.
#Zombie: green blood and -2 life points.
#Boss: 60 life points.
#Dr_Manhattan: immortal.";
if(instance_exists(organizador)){
organizador.acercade="The function of this menu
#is to relocate instances
#without knowing where are the
#others, for example to
#make betting between people
#everyone puts where want
#their character, taking turns
#to anyone see where earlier
#were placed.";}}}
