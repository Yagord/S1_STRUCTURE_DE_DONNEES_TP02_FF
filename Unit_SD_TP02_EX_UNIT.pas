unit Unit_SD_TP02_EX_UNIT;

interface

  Function inverseChaine (chaine : String) : String;

  Function oteCaractereFromChaine (chaine : String ; caractere : Char) : String;

  Function oteCaractereFromChaine2 (chaine : String ; caractere : Char) : String;

  Function oteEspaceFromChaine (chaine : String) : String;

  Function estPalindrome (chaine1 : String) : Boolean;

  Function caractereEstContenueChaine (chaine : String ; caractere : Char) : Boolean;

  Procedure arbreCaractere (chaine : String);

  Procedure inverseMots (chaine : String ; var motInverse : String);

implementation

  Function inverseChaine (chaine : String) : String;

  Var
    i : Integer;
    chaineInverse : String;

  begin

    chaineInverse := '';

    for i := length(chaine) downto 1 do
    begin

      chaineInverse := chaineInverse + chaine[i];

    end;

    Result := chaineInverse;

  end;

  Function oteCaractereFromChaine (chaine : String ; caractere : Char) : String;

  Var
    chaineTemp : String;
    i : Integer;
    chaineOte : String;

  begin

    chaineOte := '';

    for i := 1 to length(chaine) do
    begin

      if chaine[i] <> caractere then
      begin
        chaineOte := chaineOte + chaine[i]
      end;

    end;

    Result := chaineOte;

  end;

  Function oteCaractereFromChaine2 (chaine : String ; caractere : Char) : String;

  Var
    quit : Boolean;
    trouve : Boolean;
    cptCaractere : Integer;
    chaineOte : String;

  begin

    quit := False;
    trouve := False;
    cptCaractere := 1;
    chaineOte := '';

    while quit = False do
    begin

      if cptCaractere > length(chaine) then
      begin
        quit := True;
      end

      else
      begin

        if (trouve = True) OR (chaine[cptCaractere] <> caractere) then
        begin
          chaineOte := chaineOte + chaine[cptCaractere];
        end

        else
        begin
          trouve := True;
        end;

        cptCaractere := cptCaractere + 1;

      end;

    end;

    Result := chaineOte;

  end;

  Function oteEspaceFromChaine (chaine : String) : String;

  Var
    chaineTemp : String;
    i : Integer;
    chaineOteEspace : String;

  begin

    chaineOteEspace := '';

    for i := 1 to length(chaine) do
    begin

      if chaine[i] <> ' ' then
      begin
        chaineOteEspace := chaineOteEspace + chaine[i]
      end;

    end;

    Result := chaineOteEspace;

  end;

  Function estPalindrome (chaine1 : String) : Boolean;

  Var
    res : Boolean;
    chaine1OteEspace : String;
    chaine2 : String;

  begin

    chaine1OteEspace := oteEspaceFromChaine(chaine1);
    chaine2 := inverseChaine(chaine1);

    if chaine1 = chaine2 then
    begin
      res := True;
    end

    else
    begin
      res := False;
    end;

    Result := res;

  end;

  Function caractereEstContenueChaine (chaine : String ; caractere : Char) : Boolean;

  Var
    res : Boolean;
    quit : Boolean;
    cptCaractere : Integer;

  begin

    quit := False;
    cptCaractere := 1;

    while quit = False do
    begin

      if cptCaractere >= length(chaine) then
      begin
        quit := True;
        res := False;
      end

      else
      begin
        if caractere = chaine[cptCaractere] then
        begin
          quit := True;
          res := True;
        end
        else
        begin
          cptCaractere := cptCaractere + 1;
        end;

      end;

    end;

    Result := res;

  end;

  Procedure arbreCaractere (chaine : String);

  Var
    cptCaractere : Integer;
    chaineSuivante : String;

  begin

    chaineSuivante := '';

    for cptCaractere := 1 to length(chaine) do
    begin

      chaineSuivante := chaineSuivante + chaine[cptCaractere];
      writeln(chaineSuivante);

    end;

  end;

  Procedure inverseMots (chaine : String ; var motInverse : String);

  Var
    quit : Boolean;
    cptCaractere : Integer;
    i : Integer;
    indiceEspace : Integer;
    temp : String;
    chaineInverse : String;

  begin
    quit := False;
    cptCaractere := 1;
    indiceEspace := cptCaractere;
    chaineInverse := inverseChaine(chaine);
    temp := '';

    while quit = False do
    begin

      if cptCaractere > length(chaine) then
      begin
        quit := True;
      end

      else
      begin

        if (chaineInverse[cptCaractere] = ' ') OR (cptCaractere = length(chaineInverse)) then
        begin

          if chaineInverse[cptCaractere] = ' ' then
          begin

            for i := indiceEspace to cptCaractere - 1 do
            begin
              temp := temp + chaineInverse[i];
            end;

            motInverse := motInverse + inverseChaine(temp)+ ' ';

          end

          else
          begin

            for i := indiceEspace to cptCaractere do
            begin
              temp := temp + chaineInverse[i];
            end;

            motInverse := motInverse + inverseChaine(temp);

          end;

          temp := '';

          indiceEspace := cptCaractere + 1;

        end;

      end;

      cptCaractere := cptCaractere + 1;

    end;


  end;

end.
