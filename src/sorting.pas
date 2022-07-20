program sorting;

uses
  utils in 'units/utils.pas',
  selectionsort in 'units/selectionsort.pas',
  insertionsort in 'units/insertionsort.pas',
  bubblesort in 'units/bubblesort.pas',
  mergesort in 'units/mergesort.pas',
  quicksort in 'units/quicksort.pas',
  shellsort in 'units/shellsort.pas';

begin
  executeSortingAlg('Selection Sort', @selection);
  executeSortingAlg('Insertion Sort', @insertion);
  executeSortingAlg('Insertion (recursive) Sort', @insertionRec);
  executeSortingAlg('Bubble Sort', @bubble);
  executeSortingAlg('Merge Sort', @merge);
  executeSortingAlg('Quick Sort', @quick);
  executeSortingAlg('Shell Sort', @shell);
end.

