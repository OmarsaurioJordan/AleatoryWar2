//busca actualizacion en servidor, pero no lo hace muy seguido
//arg0: id instancia con la informacion

ini_open("alwa2_save.ini");
if ini_read_string("config", "newversion", argument0.version) != argument0.version
{
    argument0.newversion = true;
}
else
{
    argument0.newversion = false;
    if ini_read_string("config", "dia_revision_actu", "") != string(current_weekday)
    {
        ini_write_string("config", "dia_revision_actu", string(current_weekday));
        argument0.hand_rv = http_get("http://ojorcio.000webhostapp.com/mysql_omarsauriogames.php?ff=rv&game=aleatorywar&version=?&jugadores=?&puntajes=?&descargas=?&ac=?");
        //no olvidar annadir evento asincrono HTTP en argument0
    }
}
ini_close();
