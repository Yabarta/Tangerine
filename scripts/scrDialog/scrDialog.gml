function create_dialog(messages) 
{
    if(instance_exists(objDialog)) return;
        
    var inst = instance_create_depth(0, 0, 0, objDialog);
    inst.messages = messages;
    inst.current_message = 0;
}

// If no color is selected for a name, the game will crash
char_colors = {
    "Iván": c_aqua,
    "Neuquen": c_silver,
    "Agord": c_red,
    "Nomil": c_yellow,
    "Kraps": c_lime,
    "Einworb": c_blue, //darle sndGhostTalk.
    "Leamsi": c_black
}

intro = [
{
    name: "Iván",
    msg: "Mmmh...",
    talk: sndGhostTalk
},
{
    name: "Iván",
    msg: "Me he quedado dormido, son las 22:30. Tengo una hora y media para llegar a la previa.",
    talk: sndGhostTalk
},
{
    name: "Iván",
    msg: "Será mejor salir de aquí antes de que sea demasiado tarde.",
    talk: sndGhostTalk
}
]

aparicionBlanco = [
{
    name: "Iván",
    msg: "La puerta esta cerrada.",
    talk: sndGhostTalk
},
{
    name: "Iván",
    msg: "Me pregunto si habrá algo por aquí con lo que pueda salir.",
    talk: sndGhostTalk
}
]

introAgord = [
{
    name: "Iván",
    msg: "Vamos a probar a sacar algo de pasta...",
    talk: sndGhostTalk
},
{
    name: "Iván",
    msg: "No hay electricidad.",
    talk: sndGhostTalk
},
{
    name: "Iván",
    msg: "¿De dónde se supone que voy a sacar ahora dinero?",
    talk: sndGhostTalk
},
{
    name: "Agord",
    msg: "¿He oído dinero?",
    talk: sndGhostTalk
},
{
    name: "Agord",
    msg: "¡Oh que emoción más grande! ¡Siento como un alma pide mi auxilio!",
    talk: sndGhostTalk
},
{
    name: "Agord",
    msg: "Llena de frustración y coraje. Llena de fragilidad y pasión. ¡Es todo tan emocionante!",
    talk: sndGhostTalk
},
{
    name: "Iván",
    msg: "¿Y tu eres?",
    talk: sndGhostTalk
},
{
    name: "Agord",
    msg: "Soy conocido como Agord, el sombrero rojo. Rojo como la sangre que hierve por tus venas. ¡Rojo como el fuego que desprende mi entusiasmo!",
    talk: sndGhostTalk
}
]

postMinigame2 = [
{
    name: "Agord",
    msg: "patata",
    talk: sndGhostTalk
}
]

fuente = [
{
    name: "Iván",
    msg: "Solo tengo sed de tinto ahora mismo.",
    talk: sndGhostTalk
}
]

papelera = [
{
    name: "Iván",
    msg: "¡Anda mira que bien! Una papelera.",
    talk: sndGhostTalk
}
]

puertaCerrada = [
{
    name: "Iván",
    msg: "Esta cerrada. Igualmente no creo que haya nada de interés dentro.",
    talk: sndGhostTalk
}
]

maquinaExpendedora = [
{
    name: "Iván",
    msg: "Es increíble como en el CRAI están los chocobons a la mitad del precio de aquí.",
    talk: sndGhostTalk
}
]

elevator = [
{
    name: "Iván",
    msg: "Funcione o no, un ascensor sería una gran pérdida de tiempo.",
    talk: sndGhostTalk
}
]

bloqueoRecepccion = [
{
    name: "Iván",
    msg: "Por aquí podría llegar a recepción pero la puerta esta cerrada a cal y canto.",
    talk: sndGhostTalk
},
{
    name: "Iván",
    msg: "Tengo que subir arriba y activar el generador. Después probablemente pueda acceder desde el comedor.",
    talk: sndGhostTalk
}
]

preBossfight = [
{
    name: "Iván",
    msg: "Esto es el diálogo previo a la bossfight.",
    talk: sndGhostTalk
},
{
    name: "Iván",
    msg: "Facto.",
    talk: sndGhostTalk
}
]


