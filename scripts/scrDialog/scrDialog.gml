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
    msg: "Buenas humano, mi nombre es Einworb. ¿Qué te trae por aquí? Mmmhh, ha sonado la típica taberna de un RPG, pero bueno.",
    talk: sndBlueTalk
  },
  {
    name: "Iván",
    msg: "Nada, me quedé dormido y ahora voy muy tarde a una previa, pero ya me iba, acabo de encender el generador de emergencia, tengo dinero para el tinto, tengo los.. los hielos...",
    talk: sndIvanTalk
  },
  {
    name: "Einworb",
    msg: "Ufff, pues ahora va a estar complicado comprar hielo como que todo está cerrado ahora.",
    talk: sndBlueTalk
  },
  {
    name: "Iván",
    msg: "Ya, pues no sé qué haré entonces...",
    talk: sndIvanTalk
  },
  {
    name: "Einworb",
    msg: "Yo te podría dar un poco de hielo si haces unos encargos por mí.",
    talk: sndBlueTalk
  },
  {
    name: "Iván",
    msg: "¿En serio? Pues me salvarías la noche, dime que tengo que hacer.",
    talk: sndIvanTalk
  },
  {
    name: "Einworb",
    msg: "Pues más abajo en la cafetería, está mi gran amigo Kraps, que al muy inútil le tengo que hacer la comida, si le puedes tomar el pedido por mí, te los daré.",
    talk: sndBlueTalk
  },
  {
    name: "Iván",
    msg: "Vale, oído cocina.",
    talk: sndIvanTalk
  }
]

rechacedGreen = [
{
	name: "Kraps",
    msg: "Déjame en paz.",
    talk: sndGreenTalk
}]

minigame4_2 = [
{
    name: "Kraps",
    msg: "Déjame en paz.",
    talk: sndGreenTalk
  },
  {
    name: "Iván",
    msg: "Me manda Einworb.",
    talk: sndIvanTalk
  },
  {
    name: "Kraps",
    msg: "¿Y de qué lo conoces?",
    talk: sndGreenTalk
  },
  {
    name: "Iván",
    msg: "Me ha dicho que si le ayudo con unas cosas me dará una cosa.",
    talk: sndIvanTalk
  },
  {
    name: "Kraps",
    msg: "¿Qué cosa puede ser tan importante?",
    talk: sndGreenTalk
  },
  {
    name: "Iván",
    msg: "Hielo para echarle a mi tinto.",
    talk: sndIvanTalk
  },
  {
    name: "Kraps",
    msg: "BOOOOOOOOOOOOOOOOOOOOOOOOOOOF TINTO QUE BUENO. Pero bueno, si te manda él acepto tu sucia presencia. Dile que me haga sus famosos macarrones con tomate con un vasito de agua. Y rapidito que no tengo todo el día.",
    talk: sndGreenTalk
  },
  {
    name: "Iván",
    msg: "Vale vale, qué mal genio.",
    talk: sndIvanTalk
  }
]

minigame4_3 = [
{
    name: "Einworb",
    msg: "¿Ya has hablado con él? Dime su pedido.",
    talk: sndBlueTalk
  },
  {
    name: "Iván",
    msg: "Dice que quiere tus ''famosos'' macarrones con un vaso de agua.",
    talk: sndIvanTalk
  },
  {
    name: "Einworb",
    msg: "Vale, pues mientras cocino para que no te quedes parado como un fantasma haz estas 2 cosas, rellena el vaso de agua en la fuente y tira este trozo de papel en una papelera.",
    talk: sndBlueTalk
  },
  {
    name: "Iván",
    msg: "¿En serio?",
    talk: sndIvanTalk
  },
  {
    name: "Einworb",
    msg: "No, en serie. Así que cuanto antes lo hagas antes tienes tus hielos.",
    talk: sndBlueTalk
  }
]

minigame4_4 = [
{
    name: "Iván",
    msg: "Vaso relleno, y ahora queda menos.",
    talk: sndIvanTalk
  }
]

minigame4_5 = [
{
    name: "Iván",
    msg: "Vale, aquí estaba la papelera.",
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
    name: "Iván",
    msg: "Todo hecho, tío.",
    talk: sndIvanTalk
  },
  {
    name: "Einworb",
    msg: "Perfecto, justo cuando termine los macarrones. Ahora llévaselo a Kraps. Y te daré tus hielos.",
    talk: sndBlueTalk
  },
  {
    name: "Iván",
    msg: "Joder, ¿puedes parar de hacerme dar vueltas?",
    talk: sndIvanTalk
  },
  {
    name: "Einworb",
    msg: "No.",
    talk: sndBlueTalk
  }
]

minigame4_7 = [
{
    name: "Iván",
    msg: "Aquí están tus macarrones.",
    talk: sndIvanTalk
  },
  {
    name: "Kraps",
    msg: "Ya era hora, he visto un caracol más rápido.",
    talk: sndGreenTalk
  },
  {
    name: "Iván",
    msg: "Y yo más lentos, entonces menos quejas.",
    talk: sndIvanTalk
  }
]

finishMinigame4 = [
{
    name: "Einworb",
    msg: "Buen trabajo chico, toma tus hielos.",
    talk: sndBlueTalk
  },
  {
    name: "Iván",
    msg: "Ha recibido hielos.",
    talk: sndIvanTalk
  },
  {
    name: "Iván",
    msg: "Aunque si estás aquí, ¿podrías haberle dado tú los macarrones, no?",
    talk: sndIvanTalk
  },
  {
    name: "Einworb",
    msg: "Nah, ese era tu trabajo, no el mío. Bueno, ahora déjanos acompañarte a la salida.",
    talk: sndBlueTalk
  },
  {
    name: "Kraps",
    msg: "¿Yo también tengo que ir?",
    talk: sndGreenTalk
  },
  {
    name: "Einworb",
    msg: "Sí.",
    talk: sndBlueTalk
  },
  {
    name: "Iván",
    msg: "Vale, pero espero no tener más problemas a la hora de salir.",
    talk: sndIvanTalk
  },
  {
    name: "Einworb",
    msg: "Nah, ya tienes todo, no tendrás problemas.",
    talk: sndBlueTalk
  },
  {
    name: "Iván",
    msg: "Eso espero...",
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


