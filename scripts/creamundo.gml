//0:eliminar activos, 1:arboles azar, 2:decorados azar, 3:eliminar todo
switch(argument0){
    case 0:
        switch(control.actual){
            case 0:
                with(monigote){
                    instance_destroy();}
                raton.enfocado=-1; break;
            case 1:
                with(arbol){
                    instance_destroy();} break;
            case 2:
                with(muro){
                    instance_destroy();} break;
            case 3:
                with(casa){
                    instance_destroy();} break;} break;
    case 1:
        with(arbol){
            instance_destroy();}
        repeat(round((room_width*room_height*0.0009765625)/(40+irandom(40)))){
            do{
                xx=16+irandom(room_width-32);
                yy=32+irandom(room_height);}
            until(!collision_circle(xx,yy,r_base1*4,bloque,1,1)and !collision_circle(xx,yy,r_base1,movil,1,1));
            instance_create(xx,yy,arbol);}
        with(arbol){
            if(collision_rectangle(32,164,room_width-32,228,id,1,0)){
                instance_destroy();}
            else if(collision_rectangle(32,164,64,room_height-44,id,1,0)){
                instance_destroy();}
            else if(collision_rectangle(32,room_height-108,room_width-32,room_height-44,id,1,0)){
                instance_destroy();}
            else if(collision_rectangle(room_width-64,164,room_width-32,room_height-44,id,1,0)){
                instance_destroy();}} break;
    case 2:
        with(decorado){
            instance_destroy();}
        repeat(round((room_width*room_height*0.0009765625)/(10+irandom(10)))){
            do{
                xx=16+irandom(room_width-32);
                yy=32+irandom(room_height-32);}
            until(!collision_circle(xx,yy,r_base1,bloque,1,1)and !collision_circle(xx,yy,r_base1,movil,1,1)
            and !collision_circle(xx,yy,r_base1,decorado,1,1));
            instance_create(xx,yy,decorado);} break;
    case 3:
        with(bloque){
            instance_destroy();}
        with(monigote){
            instance_destroy();}
        raton.enfocado=-1; break;}
