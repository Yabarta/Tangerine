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
    "Leamsi": c_black,
    "General": c_white
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
    msg: "La puerta está cerrada.",
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

leavingModI = [
{
    name: "Iván",
    msg: "Vaya, esta puerta también está cerrada.",
    talk: sndIvanTalk
},
{
    name: "Iván",
    msg: "Tendré que forzarla de nuevo.",
    talk: sndIvanTalk
},
{
    name: "Neuquen",
    msg: "¡¡Oh sí!! Ha llegado mi momento de...",
    talk: sndWhiteTalk
},
{
    name: "Neuquen",
    msg: "¡¡AYUDAR!!",
    talk: sndWhiteTalk
},
{
    name: "Iván",
    msg: "...no gracias.",
    talk: sndIvanTalk
},
{
    name: "General",
    msg: "Iván ha forzado la puerta.",
    talk: sndObjectTalk
},
{
    name: "Neuquen",
    msg: "...",
    talk: sndWhiteTalk
}
]

introBank = [
{
    name: "Iván",
    msg: "Uff. Me acabo de acordar que necesitaba comprar tinto de verano.",
    talk: sndIvanTalk
},
{
    name: "Iván",
    msg: "Igual puedo sacar algo de dinero del cajero automático.",
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
    msg: "¿Y tú eres?",
    talk: sndIvanTalk
},
{
    name: "Agord",
    msg: "Soy conocido como Agord, el sombrero rojo. Rojo como la sangre que hierve por tus venas.",
    talk: sndRedTalk
},
{
    name: "Agord",
    msg: "¡Rojo como el fuego que desprende mi entusiasmo!",
    talk: sndRedTalk
},
{
    name: "Iván",
    msg: "Bueno pues encantado, pero si no te importa me tengo que ir yendo.",
    talk: sndWhiteTalk
},
{
    name: "Iván",
    msg: "Voy con prisa y no se de dónde voy a sacar dinero para tintos.",
    talk: sndWhiteTalk
},
{
    name: "Agord",
    msg: "¡Oh sí, el dinero! Yo te puedo prestar algo de dinero.",
    talk: sndRedTalk
},
{
    name: "Agord",
    msg: "Peeero, existe una condición. Debes emocionarme chico.",
    talk: sndRedTalk
},
{
    name: "Iván",
    msg: "Supongo que puedo...¿tocar la flauta?",
    talk: sndIvanTalk
},
{
    name: "Agord",
    msg: "¡Oh! ¡Si hay algo que me emocione por encima de todo eso es la música!",
    talk: sndRedTalk
},
{
    name: "Agord",
    msg: "¡Vamos demuéstrame que sabes hacer!",
    talk: sndRedTalk
}
]

postMinigame2 = [
{
    name: "Agord",
    msg: "¡Oh qué emoción, qué sensación! ¡Esa música que tocas es tan maravillosa!",
    talk: sndRedTalk
},
{
    name: "Iván",
    msg: "Es bastante trivial si me preguntas.",
    talk: sndIvanTalk
},
{
    name: "Agord",
    msg: "¡Bueno bueno, lo prometido es deuda!",
    talk: sndRedTalk
},
{
    name: "General",
    msg: "Iván ha recibido 6 euros",
    talk: sndObjectTalk
},
{
    name: "Iván",
    msg: "Guau, oye muchas gracias.",
    talk: sndIvanTalk
},
{
    name: "Agord",
    msg: "De nada chico, nos vamos viendo.",
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
    msg: "Está cerrada. Igualmente no creo que haya nada de interés dentro.",
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

leavingMinigame4 = [
{
    name: "Iván",
    msg: "Debería de intentar llegar a recepción desde aquí.",
    talk: sndIvanTalk
}
]

minigame4_1 = [
{
    name: "Einworb",
    msg: "Hola primero tienes que hablar conmigo.",
    talk: sndIvanTalk
}
]

minigame4_2 = [
{
    name: "Kraps",
    msg: "Hola ahora tienes que hablar conmigo.",
    talk: sndIvanTalk
}
]

minigame4_3 = [
{
    name: "Einworb",
    msg: "Ve a la fuente y a la papelera.",
    talk: sndIvanTalk
}
]

minigame4_4 = [
{
    name: "Iván",
    msg: "Fuente.",
    talk: sndIvanTalk
}
]

minigame4_5 = [
{
    name: "Iván",
    msg: "Papelera.",
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

minigame4_6 = [
{
    name: "Einworb",
    msg: "Este es mi último diálogo.",
    talk: sndIvanTalk
}
]

minigame4_7 = [
{
    name: "Kraps",
    msg: "Acabaste.",
    talk: sndIvanTalk
}
]

finishMinigame4 = [
{
    name: "Iván",
    msg: "Polla.",
    talk: sndIvanTalk
}
]

startMinigame3 = [
{
    name: "Nomil",
    msg: "¡Hola! ¡Qué frenesí! Siento una energía tan, tan... densa a tu alrededor.",
    talk: sndYellowTalk
},
{
    name: "Iván",
    msg: "Mira, no sé qué eres, pero no tengo tiempo para filosofar. Necesito el generador.",
    talk: sndIvanTalk
},
{
    name: "Nomil",
    msg: "¡Solo guiaré a quien use su energía de forma efectiva!",
    talk: sndYellowTalk
},
{
    name: "Iván",
    msg: "¡Claro, porque un fantasma amarillo sabe mucho de productividad!",
    talk: sndIvanTalk
},
{
    name: "Nomil",
    msg: "¡Corre tras de mí!. Si te quedas atrás... es que no quieres salir de aquí lo suficiente.",
    talk: sndYellowTalk
},

]


finalMinijuego3 = [
{
    name: "Iván",
    msg: "Ya... ya estoy aquí. L-lo logré. No me dejaste atrás.",
    talk: sndIvanTalk
},
{
    name: "Nomil",
    msg: "Es cierto. Corriste con propósito, no solo con frustración. Eso es un gran avance",
    talk: sndYellowTalk
},
{
    name: "Iván",
    msg: "El trato es el trato. Prometí usar mi fuerza en terminar el trabajo si me ayudabas.",
    talk: sndIvanTalk
},
{
    name: "Iván",
    msg: "Ahora... guíame a la solución. Necesito que la energía vuelva y salir de aquí.",
    talk: sndIvanTalk
},
{
    name: "Nomil",
    msg: "Perfecto. Me gusta la seriedad de tu compromiso. Si trabajamos juntos, la previa te estará esperando.",
    talk: sndYellowTalk
},
]

finishGame = [
{
    name: "Iván",
    msg: "Acabé.",
    talk: sndIvanTalk
},
{
    name: "Iván",
    msg: "Bieeen.",
    talk: sndIvanTalk
}
]


