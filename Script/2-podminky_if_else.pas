//Zadání

{*Zkus napsat skript, který:
pokud je Age >= 65, vypíše "Senior",
pokud je Age >= 18, vypíše "Dospělý",
jinak vypíše "Nezletilý".*}

//Řešení
If Age>=65 then
  begin
    Message('Senior');
  end
else if Age>=18 then
  begin
    Message('Dospělý');
  end
else
  begin
  Message('Nezletilý');
end.