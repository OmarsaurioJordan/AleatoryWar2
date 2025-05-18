ini_open("alwa2_save.ini");
if(!ini_key_exists("config","poseto")){
    var pp = real(ini_read_string("config", "poseteadas", "0"));
    pp++;
    ini_write_string("config", "poseteadas", string(pp));
    if(os_is_network_connected() and pp >= 6){
        ini_write_string("config","poseto","1");
        http_get("http://ojorcio.000webhostapp.com/mysql_omarsauriogames.php?ff=sc&game=aleatorywar&version=?&jugadores=?&puntajes=?&descargas=?&ac=?");}}
ini_close();
