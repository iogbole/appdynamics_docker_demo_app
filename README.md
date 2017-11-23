# Appdynamics Docker Demo App: 

This example app contain preconfigured AppDynamics: 

1) 4.4 Java Agent 
2) Standalone Machine Agent
3) Docker Visibility 
4) Server Visibility  
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






