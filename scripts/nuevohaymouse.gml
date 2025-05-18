raton.haymouse=0;
for(i=0;i<instance_number(jugador);i+=1){
    aux=instance_find(jugador,i);
    if(aux.nombre="Player" and aux.vida>0){
        raton.haymouse=aux;
        break;}}
with(jugador){
    if(nombre="Player"){
        lider=raton.haymouse;}}
