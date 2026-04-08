if (ready == 1) && (image_alpha < 1) {
    image_alpha += 0.0075;
    if (image_alpha >= 1) {
        gameover.check = true;
        if (!instance_exists(text_typer)) {
            var rand = irandom_range(0, 4);
            var typer = instance_create_depth(120, 320, DEPTH_UI.TEXT, text_typer);
				typer._skippable = false
            var types = [
                "You will be ok...{pause}{clear}",
                "No{sleep 15} this isn't &the end yet!{pause}{clear}",
                "You cannot give&up just yet...{pause}{clear}",
                "Our fate rests&in your hands...{pause}{clear}",
                "Don't lose hope!{pause}{clear}"
            ];

            var suffix = string(Player_GetName()) + "!{sleep 24} &Stay DETERMINATION...{pause}{clear}{pause}{end}";
            typer.text = prefix_+types[ rand ] + suffix;
        }

        ready = -1;
    }
}

if (ready == 0) && (image_alpha > 0) {
    image_alpha -= 0.0075;
    if (image_alpha <= 0) {
        gameover.checkGMOver = true;
    }
}
