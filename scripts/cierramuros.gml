with(muro){
    if(collision_point(x+48,y,muro,1,1)and !collision_point(x+24,y,invisible,1,1)){
        instance_create(x+24,y,invisible);}
    if(collision_point(x-48,y,muro,1,1)and !collision_point(x-24,y,invisible,1,1)){
        instance_create(x-24,y,invisible);}
    if(collision_point(x,y+48,muro,1,1)and !collision_point(x,y+24,invisible,1,1)){
        instance_create(x,y+24,invisible);}
    if(collision_point(x,y-48,muro,1,1)and !collision_point(x,y-24,invisible,1,1)){
        instance_create(x,y-24,invisible);}
    if(collision_point(x+48,y+48,muro,1,1)and !collision_point(x+24,y+24,invisible,1,1)){
        if(!(collision_point(x+48,y,muro,1,1)xor collision_point(x,y+48,muro,1,1))){
            instance_create(x+24,y+24,invisible);}}
    if(collision_point(x-48,y+48,muro,1,1)and !collision_point(x-24,y+24,invisible,1,1)){
        if(!(collision_point(x-48,y,muro,1,1)xor collision_point(x,y+48,muro,1,1))){
            instance_create(x-24,y+24,invisible);}}
    if(collision_point(x+48,y-48,muro,1,1)and !collision_point(x+24,y-24,invisible,1,1)){
        if(!(collision_point(x+48,y,muro,1,1)xor collision_point(x,y-48,muro,1,1))){
            instance_create(x+24,y-24,invisible);}}
    if(collision_point(x-48,y-48,muro,1,1)and !collision_point(x-24,y-24,invisible,1,1)){
        if(!(collision_point(x-48,y,muro,1,1)xor collision_point(x,y-48,muro,1,1))){
            instance_create(x-24,y-24,invisible);}}}
