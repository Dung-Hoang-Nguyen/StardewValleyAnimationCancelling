#IfWinActive Stardew Valley

LButton::
state := GetKeyState("CapsLock", "T")
While GetKeyState("LButton","P")
{
 if (state)
 {
  Click Left
  sleep 120
  sendEvent {Blind}{r Down}{Delete Down}{RShift Down}
  sendEvent {Blind}{r Up}{Delete Up}{RShift Up}
 }
 else {
  While GetKeyState("LButton","P")
  {
   sendEvent {Blind}{LButton down}
  }
  sendEvent {Blind}{LButton up}
 }
}
return
