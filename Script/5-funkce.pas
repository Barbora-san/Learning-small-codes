//Zadání
{*Napiš proceduru:
ShowFinished
která vypíše:
Import dokončen.
Potom ji zavolej z hlavního programu.*}

//Řešení
function IsFinished (doklad_ID: LongInt; out finished: Boolean): Boolean ;
  var
    O_FaV: TFaV; // Vytvoří objekt faktury vydané v paměti
  begin
    Result := False;
    finished := False;

    O_FaV := TFaV.Create(NewComS); // Inicializace práce s onjektem (uložení do paměti)

    try
      if O_FaV.Read(doklad_ID) then //hledání posle id dokladu (pokud nenalezen nezmění hodnotu Result)
      begin
        Result := True;
        finished := O_FaV.Potvrzeno;
      end;
    finally
      O_FaV.Free; //uvolnění z paměti
  end;
end;

var
  doklad_ID: LongInt; //číslo dokladu
  finished: Boolean;
  // Chyba- pas vytváří result automaticky Result: Boolean;

begin
  if  IsFinished(doklad_ID, finished) then
    begin
      if finished then //pokud je hodnota result true tak ověří hodnotu finished
        Message ('Doklad ' + IntToStr(doklad_ID) + ' byl importován.')
      else
        Message ('Doklad ' + IntToStr(doklad_ID) + ' se nepodařilo importovat.');
    end
  else //pokud je hodnota Result fallse tak doklad neexistuje
  begin
    Message ('Doklad ' + IntToStr(doklad_ID) + ' nebyl nalezen.')
  end
end.

//poznámky:
{* TFaV představuje třídu faktur vydaných.
  Je to jako dekalrace parametrů v databázy u konkrétní položky:

  interface Doklad {
    id: number;
    customer: string;
    total: number;
  }

  jedná se tedy o předpřipravený SQL dotaz, jen má navíc i možnosti:
    .Create     -vytvoří onjekt v paměti
    .Read(ID)   -načte objekt z paměti
    .Save       -uloží objekt v paměti
    .Delete     -smaže objekt z paměťi
    .Free       -uvolní z paměti
    ....
*}