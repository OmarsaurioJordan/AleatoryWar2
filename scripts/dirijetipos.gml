//instancia que visualizo enemigo
with(instancia){
    if(id!=argument0){
        if(vigilia=0){
        if(nombre=argument0.nombre or (grupo=argument0.grupo and grupo>0)){
            if(point_distance(x,y,argument0.x,argument0.y)<parametros[7]*0.25 and
            !collision_line(x,y,argument0.x,argument0.y,muro,1,1)){
                blanco=argument0.blanco;
                vigilia=1;}}}}}
