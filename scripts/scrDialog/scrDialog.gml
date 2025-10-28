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
    "Neuquen": c_silver,
    "Agord": c_red,
    "Nomil": c_yellow,
    "Kraps": c_lime,
    "Eirworb": c_blue,
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


