//nombre, grupo
var milider=0;
if(argument1=0){
    for(i=0;i<instance_number(instancia);i+=1){
        aux=instance_find(instancia,i);
        if(aux.nombre=argument0 and aux.vida>0){
            if(milider=0){
                milider=aux;}
            else if(aux.vida>milider.vida){
                milider=aux;}}}
    with(instancia){
        if(nombre=argument0){
            lider=milider;}}}
else{
    for(i=0;i<instance_number(instancia);i+=1){
        aux=instance_find(instancia,i);
        if(aux.grupo=argument1 and aux.vida>0){
            if(milider=0){
                milider=aux;}
            else if(aux.vida>milider.vida){
                milider=aux;}}}
    with(instancia){
        if(grupo=argument1){
            lider=milider;}}}
