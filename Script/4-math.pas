//Zadání
{*
Máš proměnné:
Price (Real)
Discount (Real, v procentech)
FinalPrice (Real)
Pokud je sleva větší než 0, spočítej konečnou cenu podle vzorce:
FinalPrice = Price - (Price * Discount / 100)
Jinak (Discount = 0) nastav:
FinalPrice = Price
Nakonec vypiš:
Message('Cena spočítána');*}

//Řešení
Var
  Price: Real;
  Discount: Real;
  FinalPrice: Real;

  begin
    If Discount>0 then
    begin
      FinalPrice := Price - (Price * Discount / 100);
    end
    else
    begin
      FinalPrice := Price;
    end;
    Message('Cena spočítána');
  end.