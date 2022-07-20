unit quicksort;

interface

  uses utils;

  procedure quick(var T: TArray);

implementation

  procedure quickN(var T: TArray; ini, fin: integer);
  var
    i, j, pivot, aux: integer;
  begin
    i := ini;
    j := fin;
    pivot := T[(ini+fin) div 2];
    repeat
      while (T[i] < pivot) do i := i + 1; { T[i] > pivot for reverse order }
      while (pivot < T[j]) do j := j - 1; { pivot > T[j] for reverse order }
      if (i <= j) then
      begin
        if (i < j) then
        begin
          aux := T[i];
          T[i] := T[j];
          T[j] := aux;
        end;
        i := i + 1;
        j := j - 1;
      end;
    until i > j;
    if (ini < j) then quickN(T, ini, j);
    if (i < fin) then quickN(T, i, fin);
  end;

  procedure quick(var T: TArray);
  begin
    quickN(T, low(T), high(T));
  end;
  
end.

