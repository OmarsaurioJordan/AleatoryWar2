//poscicion x,y
with(tipos){
    if(nombre!="Dr_Manhattan"){
    if(point_distance(x,y,argument0,argument1)<48){
        if(vida>0 and vigilia<3){
        vida-=1;
        if(hits<9){
            hits+=1;}
        reloj3=t_hits;
        if(nombre="Lizard" or nombre="Lagarto"){
            regelizzard=0;}
        if(vida=0){
            miunidad.num_instancias-=1;//restando arbol de fuerzas
            miunidad.miclan.num_instancias-=1;
            control.num_instancias-=1;
            if(miunidad.num_instancias=0){
                switch(nombre){
                    case "Boss":
                        notifiquenlo(11,nombre,":Bombs!",hits);
                        sound_play(s_matado); break;
                    case "Zombie":
                        notifiquenlo(10,nombre,":Bombs!",hits);
                        sound_play(s_matado); break;
                    default:
                        notifiquenlo(1,nombre,":Bombs!",hits);
                        sound_play(s_muerte); break;}
                miunidad.miclan.num_unidades-=1;
                if(control.num_unidades=control.top_unidades){
                    miunidad.peor=1;}
                control.num_unidades-=1;}
            else{
                switch(nombre){
                    case "Boss":
                        notifiquenlo(11,nombre,":Bombs!",hits);
                        sound_play(s_matado); break;
                    case "Zombie":
                        notifiquenlo(10,nombre,":Bombs!",hits);
                        sound_play(s_matado); break;
                    default:
                        notifiquenlo(0,nombre,":Bombs!",hits);
                        sound_play(s_muerte); break;}}
            if(miunidad.miclan.num_unidades=0){
                control.num_clanes-=1;
                if(miunidad.miclan.grupo=0){
                    control.existecero=0;}
                else{
                    if(control.idioma=1){
                        switch(grupo){
                            case 1: notifiquenlo(2,"grupo 1 azul","",0); break;
                            case 2: notifiquenlo(2,"grupo 2 rojo","",0); break;
                            case 3: notifiquenlo(2,"grupo 3 verde","",0); break;
                            case 4: notifiquenlo(2,"grupo 4 morado","",0); break;
                            case 5: notifiquenlo(2,"grupo 5 amarillo","",0); break;
                            case 6: notifiquenlo(2,"grupo 6 aqua","",0); break;}}
                    else{
                        switch(grupo){
                            case 1: notifiquenlo(2,"group 1 blue","",0); break;
                            case 2: notifiquenlo(2,"group 2 red","",0); break;
                            case 3: notifiquenlo(2,"group 3 green","",0); break;
                            case 4: notifiquenlo(2,"group 4 purple","",0); break;
                            case 5: notifiquenlo(2,"group 5 yellow","",0); break;
                            case 6: notifiquenlo(2,"group 6 aqua","",0); break;}}}}
            otrocoso=instance_create(xstart,ystart,muriendo);
            otrocoso.x=x;
            otrocoso.y=y;
            otrocoso.miunidad=miunidad;
            switch(nombre){
                case "Spartan":
                    with(instancia){
                        if(nombre="Spartan"){
                            if(vida>0 and vida<parametros[1]){
                                vida+=1;}}} break;
                case "Clon":
                    with(instancia){
                        if(nombre="Clon"){
                            if(vida>0 and vida<parametros[1]){
                                vida+=1;}}} break;
                case "Rock": case "Linux":
                    if(grupo>0){
                        if(control.idioma=1){
                            switch(grupo){
                                case 1: notifiquenlo(6,"grupo 1 azul",nombre,0); break;
                                case 2: notifiquenlo(6,"grupo 2 rojo",nombre,0); break;
                                case 3: notifiquenlo(6,"grupo 3 verde",nombre,0); break;
                                case 4: notifiquenlo(6,"grupo 4 morado",nombre,0); break;
                                case 5: notifiquenlo(6,"grupo 5 amarillo",nombre,0); break;
                                case 6: notifiquenlo(6,"grupo 6 aqua",nombre,0); break;}}
                        else{
                            switch(grupo){
                                case 1: notifiquenlo(6,"group 1 blue",nombre,0); break;
                                case 2: notifiquenlo(6,"group 2 red",nombre,0); break;
                                case 3: notifiquenlo(6,"group 3 green",nombre,0); break;
                                case 4: notifiquenlo(6,"group 4 purple",nombre,0); break;
                                case 5: notifiquenlo(6,"group 5 yellow",nombre,0); break;
                                case 6: notifiquenlo(6,"group 6 aqua",nombre,0); break;}}
                        sound_play(s_curacion);
                        var tipin=grupo;
                        with(instancia){
                            if(grupo=tipin and vida>0){
                                switch(nombre){
                                    case "Hulk": case "Tanke":
                                        if(vida<8){
                                            vida=8;}
                                        else if(vida<16){
                                            vida+=1;} break;
                                    case "Golem": case "Mole":
                                        var mmm;
                                        mmm=round(parametros[1]*0.5+1.5);
                                        if(vida<mmm){
                                            vida=mmm;}
                                        else if(vida<parametros[1]+3){
                                            vida+=1;} break;
                                    case "Zombie": break;
                                    case "Boss":
                                        if(vida<50){
                                            vida+=10;} break;
                                    default:
                                        var mmm;
                                        mmm=round(parametros[1]*0.5);
                                        if(vida<mmm){
                                            vida=mmm;}
                                        else if(vida<parametros[1]){
                                            vida+=1;} break;}}}} break;
                case "Joker": case "Magus":
                    if(grupo>0){
                        if(control.idioma=1){
                            switch(grupo){
                                case 1: notifiquenlo(7,"grupo 1 azul",nombre,0); break;
                                case 2: notifiquenlo(7,"grupo 2 rojo",nombre,0); break;
                                case 3: notifiquenlo(7,"grupo 3 verde",nombre,0); break;
                                case 4: notifiquenlo(7,"grupo 4 morado",nombre,0); break;
                                case 5: notifiquenlo(7,"grupo 5 amarillo",nombre,0); break;
                                case 6: notifiquenlo(7,"grupo 6 aqua",nombre,0); break;}}
                        else{
                            switch(grupo){
                                case 1: notifiquenlo(7,"group 1 blue",nombre,0); break;
                                case 2: notifiquenlo(7,"group 2 red",nombre,0); break;
                                case 3: notifiquenlo(7,"group 3 green",nombre,0); break;
                                case 4: notifiquenlo(7,"group 4 purple",nombre,0); break;
                                case 5: notifiquenlo(7,"group 5 yellow",nombre,0); break;
                                case 6: notifiquenlo(7,"group 6 aqua",nombre,0); break;}}
                        sound_play(s_curacion);
                        var tipin=grupo;
                        with(instancia){
                            if(grupo=tipin and vida>0){
                                switch(nombre){
                                    case "Hulk": case "Tanke":
                                        vida=16; break;
                                    case "Zombie": break;
                                    case "Golem": case "Mole":
                                        vida=parametros[1]+3; break;
                                    case "Boss":
                                        if(vida<40){
                                            vida+=20;}
                                        else if(vida<50){
                                            vida+=10;} break;
                                    default:
                                        if(vida<parametros[1]){
                                            vida=parametros[1];} break;}}}} break;}
            hayconflicto();
            if(lider=id){//al morir lider se busca nuevo lider
                if(object_index=jugador){
                    buscalider(nombre);}
                else{
                    if(parametros[21]=1){
                        encuentralideres(nombre,0);}
                    else{
                        encuentralideres(nombre,grupo)}}}
            instance_destroy();}
        else{
            if(parametros[19]=1){
                if(nombre="Zombie"){
                    tile_add(d_verdesal,0,0,32,24,x-16,y-12,p_sangre);}
                else{
                    tile_add(d_manchas,0,0,32,24,x-16,y-12,p_sangre);}}
            if(nombre="Zombie" or nombre="Boss"){
                switch(irandom(3)){
                    case 0: sound_play(s_monster1); break;
                    case 1: sound_play(s_monster2); break;
                    case 2: sound_play(s_monster3); break;
                    case 3: sound_play(s_monster4); break;}}
            else{
                switch(irandom(5)){
                    case 0: sound_play(s_herido1); break;
                    case 1: sound_play(s_herido2); break;
                    case 2: sound_play(s_herido3); break;
                    case 3: sound_play(s_herido4); break;
                    case 4: sound_play(s_herido5); break;
                    case 5: sound_play(s_herido6); break;}}}}}}}

