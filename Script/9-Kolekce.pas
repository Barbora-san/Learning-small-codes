//
{*
1.Co je kolekce?
  A)Jedna hodnota.
  B)Objekt obsahující více objektů.
  C)Metoda.

  B

2.Proč nestačí zkontrolovat jen první položku faktury?

Protože každá položka je jednotlivá kolekce a má nškolik vlastností (různé: ID, RID,cenu,ceník(ještě ovlivněn původem faktury), fotku, velikost, popis, hmotnost...)
to že první položka splní podmínku neznamená že jí splní všechny položky, mohlo dojít k jakékoliv chybě dat nebo přerušení automatické úlohy,,,
*}

//Úkol:
//Zadání
{*
Tentokrát už budeš psát pseudokód.
Neřeš přesnou syntaxi K2.
Navrhni algoritmus:
Přesuň všechny přílohy z jedné faktury na druhou.
Můžeš použít slovní zápis.
Například:
Načti zdrojovou fakturu

Načti cílovou fakturu

Pro každou přílohu

...

Ulož
*}

//Řešení
{*
vytvoř prostor v paměti pro fakturu
  vyhledej fakturu s ID "1234"
    pokud nalezeno:
      vyhledej fakturu s ID "1235"
        pokud nalezeno:
          načti položky dokladu
          sečti počet příloh dokladu
          ulož počet příloh do promněné i
            pro i>0 dělej:
              vytvoř v paměti prostor na přílohu faktury
              načti přílohu na pozici i
              přesuň se na doklad s ID "12345"
              vlož přílohu na doklad
              vymaž paměťový prostor pro přílohu
              napiš 'příloha s id:' + id položky 'bylo úspěšně přesunuto'
        pokud nenalezeno:
          napiš faktura pro přemístění nenlezena
    Pokud nenalezeno:
      napiš 'faktura nenalezena'
*}