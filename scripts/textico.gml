if(os_browser=browser_not_a_browser){
tezt=-1;
if(cualpc=0){
    var num=0;
    do{
        if(file_exists(working_directory+"\informe_aw2"+string(num)+".txt")){
            num+=1;}
        else{
            num=num*-1;}}
    until(num<=0);
    tezt=file_text_open_write(working_directory+"\informe_aw2"+string(abs(num))+".txt");
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
        papiro=get_save_filename("text|*.txt","informe_aw2");
        if(papiro!=""){
            tezt=file_text_open_write(papiro);}}
    else{
        window_set_fullscreen(0);
        control.alarm[0]=1;}}
if(tezt!=-1){
    var pnt, long;
    long=string_length(control.informe);
    pnt=1;
    do{
        if(string_char_at(control.informe,pnt)="#"){
            file_text_writeln(tezt);}
        else{
            file_text_write_string(tezt,string_char_at(control.informe,pnt));}
        pnt+=1;}
    until(pnt>long);
    file_text_close(tezt);}}
