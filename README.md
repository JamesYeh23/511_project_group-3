## BME 511 2024 Fall Final Project

## Use the [interphase](interphase.mlapp) to do the stimulation and making changes!

## Feature

### Model
A Simulink model being built to monitor the effects of a vasodilator drug on blood pressure 
incorporating baroreflex-mediated closed-loop control: 

Three subsytem also being built to represent detailed phyiological and chemical effect.
- Pharmacokinetic of the drug
- Beroreflex control of heart rate
- Barereflex of total peripheral resistance

Four variables are specfically measured as output of the model:
- Plasma concentration of drug 
- Mean arterial pressure
- Total peripheral resistance
- Mean arterial pressure

Besides one dose, a drug dose function block enable to relase drug accordingly
controled by an array

### Interphase
A user-friendly interphase being built for user to adjust the parameters and
see the multuichannel signal and stastics of variables in one place.

- Parameter List: Adjust every parameters
- Default: Switch back to default parameteres with one click
- Start: Start the stimulation with the current parameters
- Export: Export the figure and/or table of the current stimulation resuilt
- Multichannel Signal Output: Show the signal of four variables
- Statics Table: Show the stastics of four variables
- Infusion Mode: Choose mode between default and customizable drug releasing system
- Edit ShotTimes: Load the initial ShotTimes array stated in [ShotTimes_editor](./ShotTimes_editor.m)
  run the parentsearch solver to find better ShotTimes array resulting lower mean MAP and std MAP
- Feedback: Choose if having feedbakc to be closed loop system
- Sliders: Easily adjust the modifier of TPR and HR baroreflex sensitivity
- Hypersensitiviy: Switch to hypersensitvity parameteres with one click
- Default: Switch back to default parameteres with one click

## Update History

11/15:
- Build the model with 3 subsystem

11/16:

- Auto run [Project2024_params_Group3](./Project2024_params_Group3.m)
  before simulation so that all parameter being loaded
- Auto run [plot_results](./plot_results.m) after simulation so that
  the multichannel figure can be generated
- Auto run [compute_indices](./compute_indices.m) after stimulation to 
  key variables Cp, MAP, TPR and HR with intersest of equilibrium value,
  extreme value, avg percent change, std percent change

11/18:

- Built the interphase that integrate all the features so far

11/19:

- Add the "export" function to export signal output as figure and
  stastics as excel in the "results" folder
- Add the "Default" button to reset all parameters to default

11/20:

- Add a switch for user to choose defualt or customizable drug releasing system
- Add function block to implement progammable drug releasing system controled by
  an array ShotTimes

11/21:

- [ShotTimes_editor](./ShotTimes_editor.m) can be used to adjust the array of
  ShotTimes

12/3:

- Add a toggle button to switch between closed/open loop system and generate 
  certain stimulation results
- Add two slider to adjust alpha and beta respectively
- EditField change background color when values changed and return to white after
  setting back to default

12/8

- Add optimization method of ShotTimes



last updated: 12/8