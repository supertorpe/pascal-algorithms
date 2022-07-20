unit mergesort;

interface

  uses utils;

  procedure merge(var T: TArray);

implementation

  procedure mergeN(var T: TArray; ini, fin: integer);
  var
    mid, n1, n2, i, j: integer;
    rez: TArray;
  begin
    
    if (fin > ini) then
    begin
      mid := (ini + fin) div 2;
      mergeN(T, ini, mid);
      mergeN(T, mid+1, fin);
      n1 := ini;
      n2 := mid + 1;
      for i := ini to fin do
      begin
        if (n1 < mid + 1) and ((n2 > fin) or (T[n1] < T[n2])) then { T[n1] > T[n2] for reverse order }
        begin
          rez[i] := T[n1];
          inc(n1);
        end
        else
        begin
          rez[i] := T[n2];
          inc(n2);
        end;
      end;
      for j := ini to fin do
        T[j] := rez[j];
    end;
    
  end;

  procedure merge(var T: TArray);
  begin
    mergeN(T, low(T), high(T));
  end;

end.

