//bomba que visualizo enemigo
with(zoombie){
    if(id!=argument0){
        if(vigilia=0){
            if(point_distance(x,y,argument0.x,argument0.y)<parametros[7]*0.4 and
            !collision_line(x,y,argument0.x,argument0.y,muro,1,1)){
                metax=argument0.x;
                metay=argument0.y;
                vigilia=2;}}}}
