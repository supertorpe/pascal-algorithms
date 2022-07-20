unit bubblesort;

interface

  uses utils;

  procedure bubble(var T: TArray);

implementation

  procedure bubble(var T: TArray);
(*  var
    aux, i: integer;
    swapped: boolean;
  begin
    repeat
      swapped := false;
      for i := low(T)+1 to high(T) do
      begin
        if (T[i-1] > T[i]) then { T[i-1] < T[i] for reverse order }
        begin
          aux := T[i-1];
          T[i-1] := T[i];
          T[i] := aux;
          swapped := true;
        end;
      end;
    until (not swapped)
  end;*)
  var
    i, j, aux: integer;
  begin
    for i := low(T) to high(T) - 1 do
    begin
      {for j := high(T) - 1 downto i do}
      for j := low(T) to high(T) - i do
      begin
        if T[j] > T[j+1] then
        begin
          aux := T[j];
          T[j] := T[j+1];
          T[j+1] := aux;
        end;
      end;
    end;
  end;

end.
