//x flecha, y flecha, direccion
var cm;
with(instancia){
    if(vigilia=0){
        cm=parametros[7]*0.25;
        if(point_distance(x,y,argument0,argument1)<cm){
            metax=argument0+lengthdir_x(cm,argument2);
            metay=argument1+lengthdir_y(cm,argument2);
            if(!collision_line(x,y,metax,metay,muro,1,1)){
                vigilia=2;}
            else{
                metax=0;
                metay=0;}}}}
with(zoombie){
    if(vigilia=0){
        cm=parametros[7]*0.3;
        if(point_distance(x,y,argument0,argument1)<cm){
            metax=argument0+lengthdir_x(cm,argument2);
            metay=argument1+lengthdir_y(cm,argument2);
            if(!collision_line(x,y,metax,metay,muro,1,1)){
                vigilia=2;}
            else{
                metax=0;
                metay=0;}}}}
