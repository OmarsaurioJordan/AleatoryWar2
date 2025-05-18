var ii, jj, nn, aux1, aux2;
sound_play(s_iniciawar);
nn=instance_number(monigote);
for(ii=0;ii<nn;ii+=1){
    aux1=instance_find(monigote,ii);
    aux2=-1;
    for(jj=0;jj<instance_number(unidad);jj+=1){
        aux2=instance_find(unidad,jj);
        if(aux2.nombre=aux1.nombre){
            break;}
        else{
            aux2=-1;}}
    if(aux2>0){
        aux2.num_instancias+=1;}
    else{
        aux2=instance_create(0,0,unidad);
        aux2.nombre=aux1.nombre;
        aux2.grupo=aux1.grupo;}
    aux1.miunidad=aux2;}
nn=instance_number(unidad);
for(ii=0;ii<nn;ii+=1){
    aux1=instance_find(unidad,ii);
    aux2=-1;
    for(jj=0;jj<instance_number(clan);jj+=1){
        aux2=instance_find(clan,jj);
        if(aux2.grupo=aux1.grupo){
            break;}
        else{
            aux2=-1;}}
    if(aux2>0){
        aux2.num_unidades+=1;
        aux2.num_instancias+=aux1.num_instancias;}
    else{
        aux2=instance_create(0,0,clan);
        aux2.grupo=aux1.grupo;
        aux2.num_instancias=aux1.num_instancias;}
    aux1.miclan=aux2;}
control.existecero=0;
with(clan){
    top_unidades=num_unidades;
    if(grupo=0){
        control.existecero=1;}}
with(control){
    top_clanes=instance_number(clan);
    num_clanes=top_clanes;
    top_unidades=instance_number(unidad);
    num_unidades=top_unidades;
    num_instancias=instance_number(monigote);
    top_muertes=0;
    top_matanzas=0;
    num_zoombies=0;
    grupisimo=0;
    if(num_instancias=1){
        tiempo=1;}
    else{
        tiempo=0;}
    destruidos=0;
    casitas=instance_number(casa);
    if(instance_exists(casa) and parametros[0]>0){
        fabrica=1;
        if(parametros[0]<num_instancias){
            parametros[0]=num_instancias;}}
    else{
        fabrica=0;}
    if(idioma=1){
    informe="Informe de AleatoryWar2:";
    informe+="##fecha de comienzo: "+date_date_string(date_current_datetime());
    informe+="#tiempo de comienzo: "+date_time_string(date_current_datetime());
    informe+="#numero de instancias: "+string(num_instancias)+" entre "+string(top_unidades)+" unidades";
    informe+="#numero de grupos: "+string(top_clanes-existecero);
    if(fabrica=1){
        informe+="#modalidad vs bombas activada";}}
    else{
    informe="Report of AleatoryWar2:";
    informe+="##start date: "+date_date_string(date_current_datetime());
    informe+="#start time: "+date_time_string(date_current_datetime());
    informe+="#instances number: "+string(num_instancias)+" between "+string(top_unidades)+" units";
    informe+="#groups number: "+string(top_clanes-existecero);
    if(fabrica=1){
        informe+="#modality vs bombs activated";}}}
cierramuros();
with(monigote){
    if(nombre="Player" or nombre="P1" or nombre="P2" or nombre="P3" or nombre="P4"){
        aux1=instance_create(x,y,jugador);}
    else{
        aux1=instance_create(x,y,instancia);}
    aux1.nombre=nombre;
    aux1.grupo=grupo;
    aux1.miunidad=miunidad;
    switch(nombre){
        case "Boss":
            aux1.vida=60;
            aux1.pedazo=48/60;
            if(parametros[7]<450){
                aux1.ojo=450-parametros[7];} break;
        case "Hulk": case "Tanke":
            aux1.vida=16;
            aux1.pedazo=48/16; break;
        case "Golem": case "Mole":
            aux1.vida=parametros[1]+3;
            aux1.pedazo=48/aux1.vida; break;
        case "Zombie":
            if(parametros[1]>2){
                aux1.vida=parametros[1]-2;}
            else{
                aux1.vida=1;}
            aux1.pedazo=48/aux1.vida; break;
        case "Flash": case "Jaguar":
            aux1.esp=22-parametros[2]; break;
        case "Thor": case "Draco":
            if(parametros[7]<650){
                aux1.ojo=650-parametros[7];} break;
        case "Dr_Manhattan":
            if(parametros[7]<700){
                aux1.ojo=700-parametros[7];} break;
        case "Chavo": case "Homero":
            aux1.riesgo=1;
            aux1.riesgomas=2;
            aux1.riesgomenos=1;
            aux1.ojo=1; break;
        case "Terminator": case "Rambo": case "Bond": case "Hellsing":
            if(parametros[3]<4){
                aux1.extra=4-parametros[3]
                aux1.municion=4;
                aux1.canasta=3;} break;}
    instance_destroy();}
if(instance_exists(jugador)){
    if(control.idioma=1){
        control.informe+="#personajes manejables: "+string(instance_number(jugador));}
    else{
        control.informe+="#playable characters: "+string(instance_number(jugador));}
    buscalider("Player");
    buscalider("P1");
    buscalider("P2");
    buscalider("P3");
    buscalider("P4");}
if(parametros[21]=1){
    with(unidad){
        encuentralideres(nombre,0);}}
else if(parametros[21]=2){
    with(unidad){
        if(grupo=0){
            encuentralideres(nombre,0);}}
    with(clan){
        if(grupo>0){
            encuentralideres("",grupo);}}}
if(control.sonido=2){
    sound_stop(s_musica1);
    sound_loop(s_musica2);}
instance_create(0,0,tutorial);
if(trampas()){
    if(control.idioma=1){
        control.informe+="#tiene personajes especiales";
        control.informe+="##involucrados:";}
    else{
        control.informe+="#have special characters";
        control.informe+="##involveds:";}}
for(ii=0;ii<control.top_unidades;ii+=1){
    aux=instance_find(unidad,ii);
    if(control.idioma=1){
        switch(aux.grupo){
            case 0: control.informe+="#sin grupo: "; break;
            case 1: control.informe+="#grupo 1 azul: "; break;
            case 2: control.informe+="#grupo 2 rojo: "; break;
            case 3: control.informe+="#grupo 3 verde: "; break;
            case 4: control.informe+="#grupo 4 morado: "; break;
            case 5: control.informe+="#grupo 5 amarillo: "; break;
            case 6: control.informe+="#grupo 6 aqua: "; break;}}
    else{
        switch(aux.grupo){
            case 0: control.informe+="#not group: "; break;
            case 1: control.informe+="#group 1 blue: "; break;
            case 2: control.informe+="#group 2 red: "; break;
            case 3: control.informe+="#group 3 green: "; break;
            case 4: control.informe+="#group 4 purple: "; break;
            case 5: control.informe+="#group 5 yellow: "; break;
            case 6: control.informe+="#group 6 aqua: "; break;}}
    control.informe+=aux.nombre+"  X"+string(aux.num_instancias);}
control.informe+="#";
if(parametros[20]=1 and fabrica=0){
    with(instancia){
        metax=room_width*0.5;
        metay=room_height*0.5;
        vigilia=2;}}
hayconflicto();
s_poseto();
