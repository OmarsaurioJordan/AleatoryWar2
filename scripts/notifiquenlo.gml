//estilo de notif, primer implicado, segundo implicado, parametro extra
if(control.idioma=1){
if(control.muestra_mensajes=1 and argument0<12){
yy=room_height-6;
do{
    yy+=6;}
until(!collision_rectangle(room_width-12,yy,room_width,yy+104,notificacion,0,1));
aux=instance_create(room_width,yy,notificacion);
aux.estilo=argument0;
switch(argument0){
    case 0: case 1:
        aux.dicho=argument1+"#"+palabrota(argument3)+"#"+argument2; break;
    case 2:
        aux.dicho=argument1+"#a sido   #Derrotado "; break;
    case 3:
        aux.dicho=argument1+"#VENCEDOR  "; break;
    case 4:
        aux.dicho=argument1+"#GANADOR  " break;
    case 5:
        aux.dicho=argument1+"#el mejor  #con: "+string(floor(control.top_muertes))+" bajas"; break;
    case 6:
        aux.dicho=argument1+"#mas vida por:#"+argument2; break;
    case 7:
        aux.dicho=argument1+"#maxima vida por:#"+argument2; break;
    case 8:
        aux.dicho="recuperacion#total de:  #"+argument1; break;
    case 9:
        aux.dicho=argument1+"#evadio flecha de:#"+argument2; break;
    case 10:
        aux.dicho="un Zombie #erradicado por:#"+argument2; break;
    case 11:
        aux.dicho="el BOSS  #a muerto por:#"+argument2; break;}}
switch(argument0){
    case 0:
        control.informe+="#-- "+argument1+", "+palabrota(argument3)+" "+argument2; break;
    case 1:
        control.informe+="#x- "+argument1+", "+palabrota(argument3)+" "+argument2; break;
    case 2:
        control.informe+="#X- "+argument1+", a sido Derrotado"; break;
    case 3:
        control.informe+="##y- "+argument1+", VENCEDOR"; break;
    case 4:
        control.informe+="##Y- "+argument1+", GANADOR" break;
    case 5:
        control.informe+="#i- "+argument1+", el mejor con: "+string(floor(control.top_muertes))+" bajas"; break;
    case 6:
        control.informe+="#+- "+argument1+", mas vida por: "+argument2; break;
    case 7:
        control.informe+="#+- "+argument1+", maxima vida por: "+argument2; break;
    case 8:
        control.informe+="#.- recuperacion total de: "+argument1; break;
    case 9:
        control.informe+="#.- "+argument1+" evadio flecha de: "+argument2; break;
    case 10:
        control.informe+="#-- un Zombie menos, por: "+argument2; break;
    case 11:
        control.informe+="#X- el BOSS, a muerto por: "+argument2; break;
    case 12:
        control.informe+="#i- grupo "+string(control.grupisimo)+", el mejor con: "+string(control.top_matanzas)+" bajas"; break;}}
else{
if(control.muestra_mensajes=1 and argument0<12){
yy=room_height-6;
do{
    yy+=6;}
until(!collision_rectangle(room_width-12,yy,room_width,yy+104,notificacion,0,1));
aux=instance_create(room_width,yy,notificacion);
aux.estilo=argument0;
switch(argument0){
    case 0: case 1:
        aux.dicho=argument1+"#"+palabrota(argument3)+"#"+argument2; break;
    case 2:
        aux.dicho=argument1+"#to been   #Defeated "; break;
    case 3:
        aux.dicho=argument1+"#VICTORIOUS  "; break;
    case 4:
        aux.dicho=argument1+"#WINNER  " break;
    case 5:
        aux.dicho=argument1+"#the best  #with: "+string(floor(control.top_muertes))+" kills"; break;
    case 6:
        aux.dicho=argument1+"#plus life by:#"+argument2; break;
    case 7:
        aux.dicho=argument1+"#maximum life by:#"+argument2; break;
    case 8:
        aux.dicho="absolute  #recovery of:  #"+argument1; break;
    case 9:
        aux.dicho=argument1+"#avoid arrow of:#"+argument2; break;
    case 10:
        aux.dicho="a Zombie #erradicated by:#"+argument2; break;
    case 11:
        aux.dicho="the BOSS  #has died by:#"+argument2; break;}}
switch(argument0){
    case 0:
        control.informe+="#-- "+argument1+", "+palabrota(argument3)+" "+argument2; break;
    case 1:
        control.informe+="#x- "+argument1+", "+palabrota(argument3)+" "+argument2; break;
    case 2:
        control.informe+="#X- "+argument1+", to been Defeated"; break;
    case 3:
        control.informe+="##y- "+argument1+", VICTORIOUS"; break;
    case 4:
        control.informe+="##Y- "+argument1+", WINNER" break;
    case 5:
        control.informe+="#i- "+argument1+", the best with: "+string(floor(control.top_muertes))+" kills"; break;
    case 6:
        control.informe+="#+- "+argument1+", plus life by: "+argument2; break;
    case 7:
        control.informe+="#+- "+argument1+", maximum life by: "+argument2; break;
    case 8:
        control.informe+="#.- absolute recovery of: "+argument1; break;
    case 9:
        control.informe+="#.- "+argument1+" avoid arrow of: "+argument2; break;
    case 10:
        control.informe+="#-- a Zombie least, by: "+argument2; break;
    case 11:
        control.informe+="#X- the BOSS, has died by: "+argument2; break;
    case 12:
        control.informe+="#i- group "+string(control.grupisimo)+", the best with: "+string(control.top_matanzas)+" kills"; break;}}
