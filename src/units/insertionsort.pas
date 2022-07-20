unit insertionsort;

interface

  uses utils;

  procedure insertion(var T: TArray);
  procedure insertionRec(var T: TArray);

implementation

  procedure insertion(var T: TArray);
  var
    aux, i, j: integer;
  begin
    for i := low(T) + 1 to high(T) do
    begin
      aux := T[i];
      j := i;
      while (j > low(T)) and (T[j-1] > aux) do { T[j-1] < aux for reverse order }
      begin
        T[j] := T[j-1];
        j := j - 1;
      end;
      T[j] := aux;
    end;
  end;

  procedure insertionRecN(var T: TArray; n: integer);
  var
    last, j: integer;
  begin
    if (n > 0) then
    begin
      insertionRecN(T, n-1);
      last := T[n];
      j := n - 1;
      while (j >= low(T)) and (T[j] > last) do { T[j] < last for reverse order }
      begin
        T[j+1] := T[j];
        j := j - 1;
      end;
      T[j+1] := last;
    end;
  end;

  procedure insertionRec(var T: TArray);
  begin
    insertionRecN(T, high(T));
  end;

end.

