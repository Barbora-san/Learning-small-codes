//otázky
{*
1.Co z následujícího je metoda?
    A)O_FaV.Datum
    B)O_FaV.Read(ID)
    C)O_FaV.Cislo

B - čte obsah faktury vydané

2.Co představuje objekt TFaP
    A)Fakturu přijatou
    B)Fakturu vydanou
    C)Položku faktury

A třída faktury přijaté
*}

//Úkol:
//Zadání
{*
Máš tento (zjednodušený) úryvek:
if O_FaV.Read(doklad_ID) then
begin
    O_FaV.Potvrzeno := True;
    O_FaV.Save;
end;

Odpověz na dvě otázky a pak uprav kód:
Které řádky pracují s vlastnostmi a které volají metody?
Proč se nejprve nastaví Potvrzeno := True a až potom se volá Save? protože jinak by to neprovedlo žádnou změnu a změna po save by se neuložila
Nakonec kód rozšiř tak, aby po úspěšném uložení zobrazil:
Message('Doklad byl potvrzen.');
a pokud Read vrátí False, zobrazil:
Message('Doklad nebyl nalezen.');
*}

//Řešení


if O_FaV.Read(doklad_ID) then  //volá metodu čtení s parametrem ID
begin
    O_FaV.Potvrzeno := True;  //mění vlastnost potvrzeno na true
    O_FaV.Save;               //volá metodu uložit (uloží změny)
end;

//rozšíření:
if O_FaV.Read(doklad_ID) then  //volá metodu čtení s parametrem ID
begin
    O_FaV.Potvrzeno := True;  //mění vlastnost potvrzeno na true
    O_FaV.Save;               //volá metodu uložit (uloží změny)
    Message('Doklad byl potvrzen.');
end;
else //pokud read id nenajde začne tuto větev
begin
    Message('Doklad nebyl nalezen.');
end;
