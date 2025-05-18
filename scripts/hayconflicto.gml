//true: hay conflicto
resultado=false;
if(control.num_instancias>0){
    if(fabrica=1){
        if(control.num_unidades=1){
            fabrica=0;
            with(unidad){
                if(num_instancias>0){
                    notifiquenlo(3,nombre,"",0);}}
            with(zoombie){
                instance_create(x,y,desarmando);
                instance_destroy();}}
        else if(control.num_clanes=1 and control.existecero=0 and parametros[18]=1){
            fabrica=0;
            with(clan){
                if(num_instancias>0){
                    if(control.idioma=1){
                        switch(grupo){
                            case 1: notifiquenlo(4,"grupo 1 azul","",0); break;
                            case 2: notifiquenlo(4,"grupo 2 rojo","",0); break;
                            case 3: notifiquenlo(4,"grupo 3 verde","",0); break;
                            case 4: notifiquenlo(4,"grupo 4 morado","",0); break;
                            case 5: notifiquenlo(4,"grupo 5 amarillo","",0); break;
                            case 6: notifiquenlo(4,"grupo 6 aqua","",0); break;}}
                    else{
                        switch(grupo){
                            case 1: notifiquenlo(4,"group 1 blue","",0); break;
                            case 2: notifiquenlo(4,"group 2 red","",0); break;
                            case 3: notifiquenlo(4,"group 3 green","",0); break;
                            case 4: notifiquenlo(4,"group 4 purple","",0); break;
                            case 5: notifiquenlo(4,"group 5 yellow","",0); break;
                            case 6: notifiquenlo(4,"group 6 aqua","",0); break;}}}}
            with(zoombie){
                instance_create(x,y,desarmando);
                instance_destroy();}}
        else{
            resultado=true;}}
    else{
        resultado=true;
        if(control.num_unidades=1){
            resultado=false;
            with(unidad){
                if(num_instancias>0){
                    notifiquenlo(3,nombre,"",0);}}}
        else if(control.num_clanes=1 and control.existecero=0){
            resultado=false;
            with(clan){
                if(num_instancias>0){
                    if(control.idioma=1){
                        switch(grupo){
                            case 1: notifiquenlo(4,"grupo 1 azul","",0); break;
                            case 2: notifiquenlo(4,"grupo 2 rojo","",0); break;
                            case 3: notifiquenlo(4,"grupo 3 verde","",0); break;
                            case 4: notifiquenlo(4,"grupo 4 morado","",0); break;
                            case 5: notifiquenlo(4,"grupo 5 amarillo","",0); break;
                            case 6: notifiquenlo(4,"grupo 6 aqua","",0); break;}}
                    else{
                        switch(grupo){
                            case 1: notifiquenlo(4,"group 1 blue","",0); break;
                            case 2: notifiquenlo(4,"group 2 red","",0); break;
                            case 3: notifiquenlo(4,"group 3 green","",0); break;
                            case 4: notifiquenlo(4,"group 4 purple","",0); break;
                            case 5: notifiquenlo(4,"group 5 yellow","",0); break;
                            case 6: notifiquenlo(4,"group 6 aqua","",0); break;}}}}}}}
if(resultado=false){
    control.tiempo=control.tiempo*-1;
    var grande="";
    with(unidad){
        if(mejor=1){
            grande=nombre;}}
    if(grande!=""){
        notifiquenlo(5,grande,"",0);}
    if(control.grupisimo>0){
        notifiquenlo(12,"","",0);}
    with(instancia){
        if(!sound_isplaying(s_triunfo)){
            sound_stop(s_iniciawar);
            sound_play(s_triunfo);}
        vigilia=3;}
    with(jugador){
        if(vida>0){
            if(!sound_isplaying(s_triunfo)){
                sound_stop(s_iniciawar);
                sound_play(s_triunfo);}
            otrocoso=instance_create(xstart,ystart,instancia);
            otrocoso.x=x;
            otrocoso.y=y;
            otrocoso.nombre=nombre;
            otrocoso.grupo=grupo;
            otrocoso.miunidad=miunidad;
            otrocoso.vida=vida;
            otrocoso.vigilia=3;
            instance_destroy();}}
    if(control.idioma=1){
    if(instance_exists(casa)and parametros[0]>0){
        control.informe+="#bombas destruidas: "+string(control.destruidos);}
    if(control.top_unidades=1){
        control.informe+="#duracion del conflicto: 0:0 min."}
    else{
        grande=floor(abs(control.tiempo))/60;
        control.informe+="#duracion del conflicto: "+string(floor(grande))+":"
        +string(floor(frac(grande)*60))+" min.";}}
    else{
    if(instance_exists(casa)and parametros[0]>0){
        control.informe+="#bombs destroyed: "+string(control.destruidos);}
    if(control.top_unidades=1){
        control.informe+="#conflict duration: 0:0 min."}
    else{
        grande=floor(abs(control.tiempo))/60;
        control.informe+="#conflict duration: "+string(floor(grande))+":"
        +string(floor(frac(grande)*60))+" min.";}}}
