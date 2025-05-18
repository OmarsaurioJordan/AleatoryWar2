nn=instance_number(monigote);
if(nn>0){
    for(i=0;i<nn;i+=1){
        aux=instance_find(monigote,i);
        aux.x=0;
        aux.y=0;}
    for(i=0;i<nn;i+=1){
        aux=instance_find(monigote,i);
        lim=0;
        do{
            xx=48+irandom(room_width-96);
            yy=180+irandom(room_height-240);
            lim+=1;}
        until(!collision_circle(xx,yy,r_base1,movil,1,1)and (lim>50 or
        (!collision_circle(xx,yy,r_base1,bloque,1,1)and !collision_circle(xx,yy,95,movil,1,1))));
        aux.x=xx;
        aux.y=yy;}
    with(monigote){
        depth=y*-10;}}
