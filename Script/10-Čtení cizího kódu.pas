{*Tentokrát budeme psát reálný Pascal.
Ne pseudokód.
Úkol:
Máme ID faktury.
Chceme:
načíst ji,
ověřit, že existuje,
pokud je potvrzená,
zobrazit
Doklad je potvrzen.
pokud není potvrzená
Doklad není potvrzen.
pokud neexistuje
Doklad nebyl nalezen.
Kostra
Tentokrát ti ji dám schválně jen částečně.
function CheckInvoice(ID: LongInt): Boolean;
var
O_FaV: TFaV;
begin

Result := False;

O_FaV := TFaV.Create(NewComS);

try

// doplň

finally

O_FaV.Free;

end;

end;
Co budeš muset použít
Read
if
Potvrzeno
Message
Result
Tentokrát už nechci pseudokód.
Chci skutečný Pascal.
*}

function CheckInvoice(ID: LongInt): Boolean;
var
  O_FaV: TFaV;
begin

  Result := False;

  O_FaV := TFaV.Create(NewComS);

  try
    if O_FaV.Read(doklad_ID) then
      begin
        Result := True;
        if O_FaV.Potvrzeno then
        begin
          Message ('Doklad je potvrzen.');
        end
        else
        begin
          Message('Doklad není potvrzen.');
        end;
    else
    begin
      Message ('Doklad nebyl nalezen.');
    end;
  finally

  O_FaV.Free;

  end;

end;




{*Řekni mi, co podle tebe dělá tento kód:
if not O_FaV.Read(ID) then
begin
    Message('Doklad nenalezen.');
    Exit;
end;
Dvě otázky:
Co znamená not? je to obrázení hodnoty...negace pokud to splní daný požadavek je to celé fallse místo true
Co udělá Exit? přeskočí celý zbyte kódu a přesune se na nadřazenou proceduru

Jedná se o negaci existence ID - pokud ID najde je hodnota celého výrazu false*}


{*Co vypíše tento kód?
A := 5;

if not (A > 10) then
    Message('A')
else
    Message('B');

    napíše A. Protože by to znělo jako pokud není A větší než 10 tak napiš A jinak napiš B*}