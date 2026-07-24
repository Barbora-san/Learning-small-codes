//Zadání
{* Měj tyto proměnné:
Age = 20
Price = 150
IsAdmin = False
Napiš skript, který:
zvýší věk o 1,
zvýší cenu o 21 %,
nastaví IsAdmin na True,
vypíše pomocí Message() text:
Hotovo
*}

//řešení
var
  Age: Integer;
  Price: Real;
  IsAdmin: Boolean;

  begin
    Age := 20;
    Age := Age + 1;

    Price := 150;
    Price := Price * 1.21;

    IsAdmin := False;
    IsAdmin := True;

    Message('Hotovo');
  end.


