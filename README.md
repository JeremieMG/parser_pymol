# parser_pymol

Parser to export crosslink distances from StravoX/MeroX to Pymol and get a 3D visualisation of crosslinks on proteins.

![img](https://i.imgur.com/OV2tWbV.png)

## Command

```
awk -f parser.awk -v invert="y/n" directory/xvis_output.csv > filename.pml
```
