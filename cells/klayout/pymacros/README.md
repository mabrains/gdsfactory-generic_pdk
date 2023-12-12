Klayout PCells Implementation
=============================

## Using PCells from this repo directly
To use the PDK from this repo directly, you need to do the following:
1. Go to following folder in the repo `generic_pcells/klayout` and then run the following command:
```bash
export KLAYOUT_HOME=`pwd`
```
2.(optional step to enable GUI menu for running DRC/LVS) You will need to run the following commands as well from inside `generic_pcells/klayout` folder:
```bash
ln -s ../../tech/klayout/generic_pdk.lyt
ln -s ../../tech/klayout/generic_pdk.lyp
```
3. Go to any location where you want to start designing, and open klayout using the following command:
```bash
klayout -e
```
4. Create a new layout for testing.
5. Press on insert instance.
6. Go to the instance menu and select "generic_pdk" library from the library list.
7. Select the search botton and it will give the list of PCells that is available in the library.
8. Select any cell and it will show the cell.
9. Go to the PCell tap and change the parameters as needed to change the layout of the PCells.
