if(os_browser=browser_not_a_browser){
if(cualpc=0){
    var num=0;
    do{
        if(file_exists("foto_aw2_"+string(num)+".png")){
            num+=1;}
        else{
            num*=-1;}}
    until(num<=0);
    screen_save("foto_aw2_"+string(abs(num))+".png");
    num=instance_create(room_width,room_height+64,notificacion);
    if(control.idioma=1){
        num.dicho="Linux generalmente guarda en:#/home/username/.config/aleatorywar2/#sino, busque usted mismo";}
    else{
        num.dicho="Linux usually stored in:#/home/username/.config/aleatorywar2/#else, search yourself";}}
else{
    if(window_get_fullscreen()=0){
        with(instancia){
            velocidad=0;
            reloj1=parametros[6]*((80+irandom(40))*0.01);}
        papiro=get_save_filename("screenshot|*.png","foto_aw2_");
        if(papiro!=""){
            screen_save(papiro);}}
    else{
        window_set_fullscreen(0);
        control.alarm[0]=1;}}}
