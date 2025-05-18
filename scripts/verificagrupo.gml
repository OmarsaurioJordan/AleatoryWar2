//raton.enfocado
argument0.letras=0;
for(i=0;i<instance_number(monigote);i+=1){
    aux=instance_find(monigote,i);
    if(aux!=argument0 and aux.nombre=argument0.nombre){
        argument0.grupo=aux.grupo;
        break;}}
