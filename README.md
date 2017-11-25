# Appdynamics Docker Demo App: 

This example app contain preconfigured AppDynamics: 

1) 4.4 Java Agent 
2) Standalone Machine Agent
3) Docker Visibility 
4) Server Visibility (with heatmaps)  
5) Network Visibility Agent 

## Prequisites
1. Docker installed
2. 4.4 Controller 
3. Licenses for all components above 

## To Install 
1. Clone this repo 
2. Add your controller details to the `start_demo_app.sh` file. It contains some default values 
3. Make the script executable: `chmod +x start_demo_app.sh`
4. Run the script `./start_demo_app.sh` 

That's it!

Wait about 2 - 5 and confirm that all agents are reporting to your controller. 

Most business transactions are automatically detected. 

## Docker Visibility 
<img width="1389" alt="container" src="https://user-images.githubusercontent.com/2548160/33232248-9627b838-d1fa-11e7-8ed6-32e1c3a3fff0.png">


## Network Visibility 

### Network Dashboard 

<img width="1229" alt="net dash" src="https://user-images.githubusercontent.com/2548160/33232288-4fd9089a-d1fb-11e7-89e8-a13529cd184c.png">

### Network tab  - under server visibility 

<img width="1492" alt="net" src="https://user-images.githubusercontent.com/2548160/33232297-9b028972-d1fb-11e7-80e3-ce0e1b337925.png">



## Server Visibility 
<img width="1226" alt="server" src="https://user-images.githubusercontent.com/2548160/33232278-1402b294-d1fb-11e7-8e81-e383c61a34e5.png">


# Tier Metric Correlator (Heatmaps)

## Enable Heatmaps
* Goto the admin.jsp of your Controller
* Login with Password ```Appdynamics123```
* Goto ```Account Settings```
* Edit Account ```customer1```
* Add additional property
  * ```ENABLE_SIM_HEATMAPS=true```
* Save

<img width="1084" alt="enable_heatmaps" src="https://user-images.githubusercontent.com/2548160/33232193-8df69734-d1f9-11e7-9af9-b8558f4cace1.png">

## Use Heatmaps
* Login to the Controller
* Navigate to your ```Application``` --> ```Tiers & Nodes```
* Right Click the ```tier_010``` Tier
* Click ```Correlate Metrics```
* Click on 1 of the outliers
* The biggest outliers related to 1 specific Node will be displayed

<img width="1385" alt="heatmap" src="https://user-images.githubusercontent.com/2548160/33232218-055707f0-d1fa-11e7-8548-8f57190605e3.png">







