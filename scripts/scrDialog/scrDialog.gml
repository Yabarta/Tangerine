function create_dialog(messages) 
{
    if(instance_exists(objDialog)) return;
        
    var inst = instance_create_depth(0, 0, 0, objDialog);
    inst.messages = messages;
    inst.current_message = 0;
}

// If no color is selected for a name, the game will crash
char_colors = {
    "DemoGuy": c_blue
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