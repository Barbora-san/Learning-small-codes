{*Zadání z praxe
Účetní si stěžuje:
"Občas někdo omylem potvrdí fakturu, která nemá žádné položky. Potřebujeme skript, který před potvrzením zkontroluje, že faktura obsahuje alespoň jednu položku."
Dostala jsi za úkol připravit kontrolní skript.

Napiš funkci:
function CheckItems(ID: LongInt): Boolean;
která:
vytvoří objekt TFaV,
načte fakturu,
pokud neexistuje:
vypíše
Doklad nenalezen.
pokud existuje:
zkontroluje počet položek,
pokud je počet větší než 0
Faktura obsahuje položky.
nastaví
Result := True;
pokud položky nemá
Faktura neobsahuje žádné položky.
korektně uvolní objekt.
*}

function CheckItems(ID: LongInt): Boolean;
var
  O_FaV: TFaV;

begin
  O_FaV := TFaV.Create(NewComS);
  try
    if O_FaV.Read(ID) then
      Result := True;
      if O_FaV.Polozky.Count > 0 then
        Message('Faktura obsahuje položky.');
        Result := True;
      else
      begin
        Message('Faktura neobsahuje položky.');
      end;
    else
    begin
      Message('Doklad nenalezen.');
      Exit;
    end;
  finally
    O_FaV.Free;
  end;
end;

{*1.Je Count
A) metoda
B) vlastnost
C) procedura
A proč?

B vlastnost kolik položek tam je, nic nevykonává

2.Co je špatně na tomto kódu?
O_FaV := TFaV.Create(NewComS);

if O_FaV.Polozky.Count > 0 then
    Message('OK');

O_FaV.Read(ID);
Nechci jen odpověď "je to špatně".
Chci vysvětlit proč.

Je špatně to že se szanží počítat počet položk na dokladu v paměti do které se žádný doklad nenahrál, a pak nahraje do paměti doklad a už na ně nepočítá položky.
*}

//Bonus
{*Představ si, že účetní změní fakturu tak, že smaže všechny položky.
Jak bys zabránila tomu, aby ji uživatel přesto potvrdil?
Záleří zda je otázka položena z hlediska současné úpravy..tam by se to řešilo rezervací v moment kdy ji jeden uživatel otevře do úprav.
Jestli je položena spíše z pohledu potvrzení prázdné faktury, tak ybch tlačítko pro potvrzení zablokovala oprávněním a napsala script který po spuštění načte fakturu a zjistí kolik je naní položek a yhodnotí zda může či nemůže potvrdit, přesně jako ten výš.
*}
