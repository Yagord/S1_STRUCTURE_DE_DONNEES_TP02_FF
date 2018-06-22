program SD_TP02_EX_UNIT;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit_SD_TP02_EX_UNIT in 'Unit_SD_TP02_EX_UNIT.pas';

Var
  chaine1 : String;
  chaine2 : String;
  motInverse : String;

begin

  writeln(inverseChaine('azerty'));

  writeln(oteCaractereFromChaine('azzerty','z'));

  writeln(oteCaractereFromChaine2('azzerty','z'));

  writeln(oteEspaceFromChaine('az er tr rr'));

  chaine1 := 'bob';

  if estPalindrome(chaine1) = True then
  begin
    writeln('True');
  end
  else
  begin
    writeln('False');
  end;

  if caractereEstContenueChaine(chaine1,'o') = True then
  begin
    writeln('True');
  end
  else
  begin
    writeln('False');
  end;

  arbreCaractere('internet');

  chaine2 := 'Problèmes de Résolutions';

  motInverse := '';

  inverseMots(chaine2, motInverse);

  write(motInverse);

  readln;

end.
