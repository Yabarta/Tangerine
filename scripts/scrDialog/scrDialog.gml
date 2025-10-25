function create_dialog(messages) 
{
    if(instance_exists(objDialog)) return;
        
    var inst = instance_create_depth(0, 0, 0, objDialog);
    inst.messages = messages;
    inst.current_message = 0;
}

// If no color is selected for a name, the game will crash
char_colors = {
    "DemoGuy": c_blue,
    "Iván": c_aqua,
    "WhiteGhost": c_silver,
    "Agord": c_red,
    "Ekim": c_yellow,
    "GreenGhost": c_lime,
    "BlueGhost": c_blue,
    "Leamsi": c_black
}

demo_d1 = [
{
    name: "DemoGuy",
    msg: "Hi, I am the demo guy.",
    talk: sndGhostTalk
},
{
    name: "DemoGuy",
    msg: "This is a test of the dialogue.",
    talk: sndGhostTalk
}
]

intro = [
{
    name: "Iván",
    msg: "Oh no, me he quedado dormido.",
    talk: sndGhostTalk
},
{
    name: "Iván",
    msg: "Tengo una hora y media para llegar a la previa.",
    talk: sndGhostTalk
},
{
    name: "Iván",
    msg: "Será mejor salir de aquí antes de que sea demasiado tarde.",
    talk: sndGhostTalk
}
]

moduloI_1 = [
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

moduloI_2 = [
{
    name: "WhiteGhost",
    msg: "OooOOOooh. Parece que alguien se ha quedado encerrado a altas horas de la noche.",
    talk: sndGhostTalk
},
{
    name: "Iván",
    msg: "No me digas...",
    talk: sndGhostTalk
},
{
    name: "WhiteGhost",
    msg: "OooOOOooh. Pero no tema usted jovenzuelo. Pues pertenezco al grupo de los Seis Sombreros.",
    talk: sndGhostTalk
},
{
    name: "Iván",
    msg: "Ahá...",
    talk: sndGhostTalk
},
{
    name: "WhiteGhost",
    msg: "OooOOOooh...",
    talk: sndGhostTalk
},
{
    name: "WhiteGhost",
    msg: "Oye objetivamente suena como si no te importase.",
    talk: sndGhostTalk
},
{
    name: "Iván",
    msg: "Tengo prisa, me gustaría salir de aquí. ¿Vas a ayudarme o vas a quedarte ahí sin hacer nada?",
    talk: sndGhostTalk
},
{
    name: "WhiteGhost",
    msg: "Muchacho hablas con una presión agobiante. Tu situación es objetivamente una horrible.",
    talk: sndGhostTalk
},
]

