//raton.enfocado
var larg;
larg=string_length(argument0.nombre);
with(argument0){
    if(keyboard_check_released(vk_backspace)){
        if(larg<2){
            nombre="";
            verificagrupo(id);}
        else{
            nombre=string_copy(nombre,1,larg-1);
            verificagrupo(id);}}
    if(keyboard_check_released(vk_delete)){
        nombre="";
        grupo=0;
        verificagrupo(id);}
    else if(larg<12 and letras=1){
        switch(keyboard_key){
            case vk_space:
                nombre+="_";
                verificagrupo(id); break;
            case ord('0'): case vk_numpad0:
                nombre+="0";
                verificagrupo(id); break;
            case ord('1'): case vk_numpad1:
                nombre+="1";
                verificagrupo(id); break;
            case ord('2'): case vk_numpad2:
                nombre+="2";
                verificagrupo(id); break;
            case ord('3'): case vk_numpad3:
                nombre+="3";
                verificagrupo(id); break;
            case ord('4'): case vk_numpad4:
                nombre+="4";
                verificagrupo(id); break;
            case ord('5'): case vk_numpad5:
                nombre+="5";
                verificagrupo(id); break;
            case ord('6'): case vk_numpad6:
                nombre+="6";
                verificagrupo(id); break;
            case ord('7'): case vk_numpad7:
                nombre+="7";
                verificagrupo(id); break;
            case ord('8'): case vk_numpad8:
                nombre+="8";
                verificagrupo(id); break;
            case ord('9'): case vk_numpad9:
                nombre+="9";
                verificagrupo(id); break;
            case ord('A'):
                if(larg=0){nombre+="A";}
                else if(string_char_at(nombre,larg)="_"){nombre+="A";}
                else{nombre+="a";}
                verificagrupo(id); break;
            case ord('B'):
                if(larg=0){nombre+="B";}
                else if(string_char_at(nombre,larg)="_"){nombre+="B";}
                else{nombre+="b";}
                verificagrupo(id); break;
            case ord('C'):
                if(larg=0){nombre+="C";}
                else if(string_char_at(nombre,larg)="_"){nombre+="C";}
                else{nombre+="c";}
                verificagrupo(id); break;
            case ord('D'):
                if(larg=0){nombre+="D";}
                else if(string_char_at(nombre,larg)="_"){nombre+="D";}
                else{nombre+="d";}
                verificagrupo(id); break;
            case ord('E'):
                if(larg=0){nombre+="E";}
                else if(string_char_at(nombre,larg)="_"){nombre+="E";}
                else{nombre+="e";}
                verificagrupo(id); break;
            case ord('F'):
                if(larg=0){nombre+="F";}
                else if(string_char_at(nombre,larg)="_"){nombre+="F";}
                else{nombre+="f";}
                verificagrupo(id); break;
            case ord('G'):
                if(larg=0){nombre+="G";}
                else if(string_char_at(nombre,larg)="_"){nombre+="G";}
                else{nombre+="g";}
                verificagrupo(id); break;
            case ord('H'):
                if(larg=0){nombre+="H";}
                else if(string_char_at(nombre,larg)="_"){nombre+="H";}
                else{nombre+="h";}
                verificagrupo(id); break;
            case ord('I'):
                if(larg=0){nombre+="I";}
                else if(string_char_at(nombre,larg)="_"){nombre+="I";}
                else{nombre+="i";}
                verificagrupo(id); break;
            case ord('J'):
                if(larg=0){nombre+="J";}
                else if(string_char_at(nombre,larg)="_"){nombre+="J";}
                else{nombre+="j";}
                verificagrupo(id); break;
            case ord('K'):
                if(larg=0){nombre+="K";}
                else if(string_char_at(nombre,larg)="_"){nombre+="K";}
                else{nombre+="k";}
                verificagrupo(id); break;
            case ord('L'):
                if(larg=0){nombre+="L";}
                else if(string_char_at(nombre,larg)="_"){nombre+="L";}
                else{nombre+="l";}
                verificagrupo(id); break;
            case ord('M'):
                if(larg=0){nombre+="M";}
                else if(string_char_at(nombre,larg)="_"){nombre+="M";}
                else{nombre+="m";}
                verificagrupo(id); break;
            case ord('N'):
                if(larg=0){nombre+="N";}
                else if(string_char_at(nombre,larg)="_"){nombre+="N";}
                else{nombre+="n";}
                verificagrupo(id); break;
            case ord('Ñ'):
                if(larg=0){nombre+="Ñ";}
                else if(string_char_at(nombre,larg)="_"){nombre+="Ñ";}
                else{nombre+="ñ";}
                verificagrupo(id); break;
            case ord('O'):
                if(larg=0){nombre+="O";}
                else if(string_char_at(nombre,larg)="_"){nombre+="O";}
                else{nombre+="o";}
                verificagrupo(id); break;
            case ord('P'):
                if(larg=0){nombre+="P";}
                else if(string_char_at(nombre,larg)="_"){nombre+="P";}
                else{nombre+="p";}
                verificagrupo(id); break;
            case ord('Q'):
                if(larg=0){nombre+="Q";}
                else if(string_char_at(nombre,larg)="_"){nombre+="Q";}
                else{nombre+="q";}
                verificagrupo(id); break;
            case ord('R'):
                if(larg=0){nombre+="R";}
                else if(string_char_at(nombre,larg)="_"){nombre+="R";}
                else{nombre+="r";}
                verificagrupo(id); break;
            case ord('S'):
                if(larg=0){nombre+="S";}
                else if(string_char_at(nombre,larg)="_"){nombre+="S";}
                else{nombre+="s";}
                verificagrupo(id); break;
            case ord('T'):
                if(larg=0){nombre+="T";}
                else if(string_char_at(nombre,larg)="_"){nombre+="T";}
                else{nombre+="t";}
                verificagrupo(id); break;
            case ord('U'):
                if(larg=0){nombre+="U";}
                else if(string_char_at(nombre,larg)="_"){nombre+="U";}
                else{nombre+="u";}
                verificagrupo(id); break;
            case ord('V'):
                if(larg=0){nombre+="V";}
                else if(string_char_at(nombre,larg)="_"){nombre+="V";}
                else{nombre+="v";}
                verificagrupo(id); break;
            case ord('W'):
                if(larg=0){nombre+="W";}
                else if(string_char_at(nombre,larg)="_"){nombre+="W";}
                else{nombre+="w";}
                verificagrupo(id); break;
            case ord('X'):
                if(larg=0){nombre+="X";}
                else if(string_char_at(nombre,larg)="_"){nombre+="X";}
                else{nombre+="x";}
                verificagrupo(id); break;
            case ord('Y'):
                if(larg=0){nombre+="Y";}
                else if(string_char_at(nombre,larg)="_"){nombre+="Y";}
                else{nombre+="y";}
                verificagrupo(id); break;
            case ord('Z'):
                if(larg=0){nombre+="Z";}
                else if(string_char_at(nombre,larg)="_"){nombre+="Z";}
                else{nombre+="z";}
                verificagrupo(id); break;}}}
