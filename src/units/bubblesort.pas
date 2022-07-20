unit bubblesort;

interface

  uses utils;

  procedure bubble(var T: TArray);
  procedure bubble2(var T: TArray);

implementation

  procedure bubble(var T: TArray);
  var
    i, j, aux: integer;
  begin
    for i := low(T) to high(T) - 1 do
    begin
      for j := low(T) to high(T) - i do
      begin
        if T[j] > T[j+1] then { T[i] < T[i+1] for reverse order }
        begin
          aux := T[j];
          T[j] := T[j+1];
          T[j+1] := aux;
        end;
      end;
    end;
  end;

  procedure bubble2(var T: TArray);
  var
    aux, i: integer;
    swapped: boolean;
  begin
    repeat
      swapped := false;
      for i := low(T) to high(T)-1 do
      begin
        if (T[i] > T[i+1]) then { T[i] < T[i+1] for reverse order }
        begin
          aux := T[i];
          T[i] := T[i+1];
          T[i+1] := aux;
          swapped := true;
        end;
      end;
    until (not swapped)
  end;

end.
