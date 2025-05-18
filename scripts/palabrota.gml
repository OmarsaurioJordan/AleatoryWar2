respuesta="";
if(control.idioma=1){
switch(argument0){
    case 0: respuesta="bajado por:"; break;
    case 1: respuesta="bajado por:"; break;
    case 2: respuesta="asesinado por:"; break;
    case 3: respuesta="destruido por:"; break;
    case 4: respuesta="destrozado por:"; break;
    case 5: respuesta="masacrado por:"; break;
    case 6: respuesta="acribillado por:"; break;
    case 7: respuesta="pulverizado por:"; break;
    default: respuesta="desintegrado por:"; break;}}
else{
switch(argument0){
    case 0: respuesta="killed by:"; break;
    case 1: respuesta="killed by:"; break;
    case 2: respuesta="murdered by:"; break;
    case 3: respuesta="destroyed by:"; break;
    case 4: respuesta="shattered by:"; break;
    case 5: respuesta="massacred by:"; break;
    case 6: respuesta="riddled by:"; break;
    case 7: respuesta="pulverized by:"; break;
    default: respuesta="desintegrated by:"; break;}}
return(respuesta);
