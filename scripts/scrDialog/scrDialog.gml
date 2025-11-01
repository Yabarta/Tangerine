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
    "Einworb": c_blue, 
    "Leamsi": c_black
}

intro = [
{
    name: "Iván",
    msg: "Mmmh...",
    talk: sndIvanTalk
},
{
    name: "Iván",
    msg: "Me he quedado dormido, son las 22:30. Tengo una hora y media para llegar a la previa.",
    talk: sndIvanTalk
},
{
    name: "Iván",
    msg: "Será mejor salir de aquí antes de que sea demasiado tarde.",
    talk: sndIvanTalk
}
]

aparicionBlanco = [
{
    name: "Iván",
    msg: "La puerta esta cerrada.",
    talk: sndIvanTalk
},
{
    name: "Iván",
    msg: "Me pregunto si habrá algo por aquí con lo que pueda salir.",
    talk: sndIvanTalk
},
{
    name: "Neuquen",
    msg: "Aparezco",
    talk: sndWhiteTalk
},
{
    name: "Neuquen",
    msg: "Acabo el diálogo",
    talk: sndWhiteTalk
}
]

bloquearClase = [
{
    name: "Iván",
    msg: "Empieso.",
    talk: sndIvanTalk
},
{
    name: "Neuquen",
    msg: "No.",
    talk: sndWhiteTalk
}
]

charger = [
{
    name: "Iván",
    msg: "Un cargador. Nada relevante.",
    talk: sndIvanTalk
}
]

hairFork = [
{
    name: "Iván",
    msg: "Una horquilla. Con esto probablemente pueda forzar la cerradura.",
    talk: sndIvanTalk
}
]

startMinigame1 = [
{
    name: "Iván",
    msg: "Empieso.",
    talk: sndIvanTalk
},
{
    name: "Neuquen",
    msg: "Si.",
    talk: sndWhiteTalk
}
]

finishMinigame1 = [
{
    name: "Neuquen",
    msg: "Lo has hecho.",
    talk: sndWhiteTalk
},
{
    name: "Iván",
    msg: "Ole que ole.",
    talk: sndIvanTalk
},
{
    name: "Neuquen",
    msg: "Ahora te acompaño.",
    talk: sndWhiteTalk
}
]

introAgord = [
{
    name: "Iván",
    msg: "Vamos a probar a sacar algo de pasta...",
    talk: sndIvanTalk
},
{
    name: "Iván",
    msg: "No hay electricidad.",
    talk: sndIvanTalk
},
{
    name: "Iván",
    msg: "¿De dónde se supone que voy a sacar ahora dinero?",
    talk: sndIvanTalk
},
{
    name: "Agord",
    msg: "¿He oído dinero?",
    talk: sndRedTalk
},
{
    name: "Agord",
    msg: "¡Oh que emoción más grande! ¡Siento como un alma pide mi auxilio!",
    talk: sndRedTalk
},
{
    name: "Agord",
    msg: "Llena de frustración y coraje. Llena de fragilidad y pasión. ¡Es todo tan emocionante!",
    talk: sndRedTalk
},
{
    name: "Iván",
    msg: "¿Y tu eres?",
    talk: sndIvanTalk
},
{
    name: "Agord",
    msg: "Soy conocido como Agord, el sombrero rojo. Rojo como la sangre que hierve por tus venas. ¡Rojo como el fuego que desprende mi entusiasmo!",
    talk: sndRedTalk
}
]

postMinigame2 = [
{
    name: "Agord",
    msg: "patata",
    talk: sndRedTalk
}
]

fuente = [
{
    name: "Iván",
    msg: "Solo tengo sed de tinto ahora mismo.",
    talk: sndIvanTalk
}
]

papelera = [
{
    name: "Iván",
    msg: "¡Anda mira que bien! Una papelera.",
    talk: sndIvanTalk
}
]

puertaCerrada = [
{
    name: "Iván",
    msg: "Esta cerrada. Igualmente no creo que haya nada de interés dentro.",
    talk: sndIvanTalk
}
]

maquinaExpendedora = [
{
    name: "Iván",
    msg: "Es increíble como en el CRAI están los chocobons a la mitad del precio de aquí.",
    talk: sndIvanTalk
}
]

elevator = [
{
    name: "Iván",
    msg: "Funcione o no, un ascensor sería una gran pérdida de tiempo.",
    talk: sndIvanTalk
}
]

bloqueoRecepccion = [
{
    name: "Iván",
    msg: "Por aquí podría llegar a recepción pero la puerta esta cerrada a cal y canto.",
    talk: sndIvanTalk
},
{
    name: "Iván",
    msg: "Tengo que subir arriba y activar el generador. Después probablemente pueda acceder desde el comedor.",
    talk: sndIvanTalk
}
]

preBossfight = [
{
    name: "Iván",
    msg: "Esto es el diálogo previo a la bossfight.",
    talk: sndIvanTalk
},
{
    name: "Iván",
    msg: "Facto.",
    talk: sndIvanTalk
}
]


