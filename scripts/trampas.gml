respuesta=false;
for(i=0;i<instance_number(instancia);i+=1){
    aux=instance_find(instancia,i);
    switch(aux.nombre){
        case "Predator": case "Asesino":
        case "T_Rex": case "Diodo":
        case "Hulk": case "Tanke":
        case "Rambo": case "Bond":
        case "Flash": case "Jaguar":
        case "Einstein": case "Newton":
        case "Lizard": case "Lagarto":
        case "Terminator": case "Hellsing":
        case "Leonidas": case "Hercules":
        case "Tarzan": case "Woody":
        case "Master": case "Sensei":
        case "Jack": case "Frijol":
        case "Spartan": case "Clon":
        case "Rock": case "Linux":
        case "Joker": case "Magus":
        case "Thor": case "Draco":
        case "Golem": case "Mole":
        case "Pi": case "Web": case "3_1416":
        case "Fenix": case "Thrall":
        case "Chavo": case "Homero":
        case "Tesla": case "220v":
        case "Zombie": case "Boss":
        case "Dr_Manhattan":
            respuesta=true; break;}
    if(respuesta=true){
        break;}}
return(respuesta);
