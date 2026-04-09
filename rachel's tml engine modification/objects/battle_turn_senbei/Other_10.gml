///@desc Turn Preparation Start\

var text = "";
    
var _turn = turn;
switch _turn
{
  case 0:
    text = "{script `SetSenbeiFace` 5}{voice 8}Aren't you curious what&I've been up to this&past year?{pause}{clear}{script `SetSenbeiBody` 5}I haven't stopped thinking&of you, Timber.{pause}{end}";
    break;
  case 1:
    text = "{script `SetSenbeiFace` 4}{voice 8}Well, you won't get to know.{pause}{clear}All I want you to do&is to kill me.{pause}{clear}{script `SetSenbeiFace` 5}Then we'll both know what&a horrible monster you&are, hm?{pause}{end}";
    break;
  case 2:
    text = "{script `SetSenbeiBody` 4}{voice 8}Come on...{pause}{clear}{script `SetSenbeiBody` 6}{script `SetSenbeiFace` 6}Why don't you show me&your killing intent?{sleep 15}&I want to see it firsthand.{pause}{end}";
    break;
}

var dialog = instance_create_depth(420, (battle_enemy.y - 140), 0, battle_dialog_enemy);
dialog.text = text //{voice 0}{font 0}, YOU SHOULD SET CUSTOM VOICES AND FONTS IN THE USER EVENT 5 OF text_typer OBJECT.
//dialog.template = 1
