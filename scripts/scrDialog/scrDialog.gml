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
    msg: "Pero qué tenemos aquí. Un jovenzuelo se ha quedado encerrado en la escuela.",
    talk: sndWhiteTalk
},
{
    name: "Iván",
    msg: "Mira tú por donde no necesito alcohol para empezar a ver cosas raras.",
    talk: sndIvanTalk
},
{
    name: "Neuquen",
    msg: "Desde un punto de vista imparcial lo soy. Aún así no debe temer usted pues se encuentra ante Neuquen, el gran sombrero blanco.",
    talk: sndWhiteTalk
},
{
    name: "Iván",
    msg: "Tampoco es que te tuviese mucho miedo desde primera hora.",
    talk: sndIvanTalk
},
{
    name: "Neuquen",
    msg: "...Aunque se que mi aspecto puede intimidar a cualquiera, objetivamente estás ante una situación muy compleja. No me queda de otra que de ayudarte.",
    talk: sndWhiteTalk
},
{
    name: "Iván",
    msg: "Ah genial. ¿Puedes abrir la puerta de alguna manera?",
    talk: sndIvanTalk
},
{
    name: "Neuquen",
    msg: "Pues...no...",
    talk: sndWhiteTalk
},
{
    name: "Iván",
    msg: "Eso pensab-",
    talk: sndIvanTalk
},
{
    name: "Neuquen",
    msg: "¡¡PODRÍAS!! buscar algo que te permita forzar la cerradura.",
    talk: sndWhiteTalk
},
{
    name: "Iván",
    msg: "...",
    talk: sndIvanTalk
}
]

bloquearClase = [
{
    name: "Neuquen",
    msg: "¿Has encontrado algo que te permita abrir la puerta?",
    talk: sndWhiteTalk
},
{
    name: "Iván",
    msg: "Todavía no.",
    talk: sndIvanTalk
},
{
    name: "Neuquen",
    msg: "La gente suele dejarse muchas cosas en la clase. Intenta aprovecharte de eso.",
    talk: sndWhiteTalk
}
]

charger = [
{
    name: "Iván",
    msg: "Un cargador. Alguién va a tener un finde con problemas de batería.",
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
    name: "Neuquen",
    msg: "¿Has encontrado algo que te permita abrir la puerta?",
    talk: sndWhiteTalk
},
{
    name: "Iván",
    msg: "Tengo una horquilla. Con esto será bastante sencillo descerrajarla.",
    talk: sndIvanTalk
},
{
    name: "Neuquen",
    msg: "Genial, deja que te ayude con el cerrojo.",
    talk: sndWhiteTalk
},
{
    name: "Iván",
    msg: "No creo que haga falta. Se me da bast-",
    talk: sndIvanTalk
},
{
    name: "Neuquen",
    msg: "¡¡PRIMERO!! Subiré los pestillos para que sepas cuáles tienes que levantar.",
    talk: sndWhiteTalk
},
{
    name: "Neuquen",
    msg: "Lo único que debes hacer es memorizar el orden y replicar mis movimientos.",
    talk: sndWhiteTalk
}
]

finishMinigame1 = [
{
    name: "Iván",
    msg: "¡Hecho! Ha sido bastante fácil.",
    talk: sndIvanTalk
},
{
    name: "Neuquen",
    msg: "Oh, me alegra poder haber sido de ayuda.",
    talk: sndWhiteTalk
},
{
    name: "Iván",
    msg: "¿Qué? ¿Al final has hecho algo?",
    talk: sndIvanTalk
},
{
    name: "Neuquen",
    msg: "...",
    talk: sndWhiteTalk
},
{
    name: "Iván",
    msg: "Lo siento, pero no se ve mucho en una habitación a oscuras y con una horquilla metida en una cerradura.",
    talk: sndIvanTalk
},
{
    name: "Neuquen",
    msg: "Objetivamente estás... en lo correcto.",
    talk: sndWhiteTalk
},
{
    name: "Neuquen",
    msg: "¡¡PERO NO TE PREOCUPES JOVENZUELO!!",
    talk: sndWhiteTalk
},
{
    name: "Neuquen",
    msg: "No descansaré hasta que consigas salir de aquí. Considérame tu acompañante.",
    talk: sndWhiteTalk
},
{
    name: "Iván",
    msg: "Lo que tu digas...",
    talk: sndIvanTalk
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

startMinigame3 = [
{
    name: "Nomil",
    msg: "Chochete",
    talk: sndYellowTalk
}
]

finalMinijuego3 = [
{
    name: "Nomil",
    msg: "Limon",
    talk: sndYellowTalk
},
{
    name: "Iván",
    msg: "Gracias",
    talk: sndIvanTalk
}
]


