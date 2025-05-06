# Connor's Ruby Modules

Custom utility modules I use throughout my scripts. Modules are included in the `lib` directory.

## import_csv
Provides: import_csv('file.csv')

Module to import a CSV file as an array of hash maps, each with a common set of keys. (Similar to PowerShell's native [Import-Csv](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/import-csv?view=powershell-7.5))

## fzf
Provides: `fzf(collection, fzf_args)`

Takes a ruby collection as an argument, pipes the items to fzf, and returns a filtered array of the selected items. 

Supports passing arguments to fzf (including `-m` for multi-select) as the second argument to the function.
