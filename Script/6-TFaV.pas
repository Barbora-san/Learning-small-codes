//otázky
{*
1. Co dělá O_FaV := TFaV.Create(NewComS);
  A)Načte fakturu z databáze.
  B)Vytvoří objekt v paměti připravený pro práci.
  C)Uloží novou fakturu.

B vytvoří objekt v paměti-na začátku prázdyný

2.Proč se skoro vždy používá: "if O_FaV.Read(ID) then" místo pouhého: "O_FaV.Read(ID);"
Co tím chráníme?

Zachycujeme zda záznam s daným ID existuje.
Pokud ne, nelze na něm dělat úpravy nebo ho přeukládat a je potřeba se přesunout na konec scriptu*}

//Úkol:
//Zadání
{*Představ si, že objekt O_FaV už existuje a je vytvořen pomocí Create.
Napiš pouze část od try, která:
načte fakturu podle doklad_ID,
pokud existuje,
nastaví poznámku na "Import dokončen",
uloží změny,
vypíše "Doklad upraven",
pokud neexistuje,
vypíše "Doklad nenalezen".*}

//Řešení
Try
 if O_FaV.Read(doklad_ID) then
  begin
    //note := 'Import dokončen';
    O_FaV.Poznamka :='Import dokončen';
    O_FaV.Save;
    Message ('Doklad upraven');
    end
 else
  begin
    Message ('Doklad nenalezen');
  end;
finally
  O_FaV.Free;
end;

