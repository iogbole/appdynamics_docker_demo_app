FROM iogbole/appdynamics_demo_app
MAINTAINER "Israel Ogbole"
ARG host_name=
ARG access_key=
ARG port_number=
ARG account_name=
ARG sim_enabled=
ARG ssl_enabled=

ENV app_home /opt/appdynamics/appdynamics_demo_app
ENV app_conf /opt/appdynamics/AppServerAgent/ver4.4.0.4/conf
ENV machine_conf /opt/appdynamics/machineagent-bundle-64bit-linux-4.4.0.498/conf
ENV machine_home /opt/appdynamics/machineagent-bundle-64bit-linux-4.4.0.498
ENV net_viz /opt/appdynamics/netviz-x64-linux-4.4.0.472

EXPOSE $port_number 

RUN echo "Using $host_name for controller-host" && \
    echo "Using $port_number for controller port number" && \
    echo "Using $access_key for controller key" && \
	sed -i.bak "s/<controller-host>/<controller-host>$host_name/g \
	       ;  s/<account-access-key>/<account-access-key>$access_key/g \
	       ;  s/<controller-port>/<controller-port>$port_number/g \
	       ;  s/<account-name>/<account-name>$account_name/g \
	       ;  s/<sim-enabled>false/<sim-enabled>$sim_enabled/g \
	       ;  s/<controller-ssl-enabled>false/<controller-ssl-enabled>$ssl_enabled/g" \
	       $app_conf/controller-info.xml  $machine_conf/controller-info.xml &&  \   
   echo "\n\n===controller new conf file===\n\n" &&  \
   cat $app_conf/controller-info.xml &&  \
   echo "\n\n===machine agent new conf file===\n\n" &&  \
   cat $machine_conf/controller-info.xml &&  \
   chown -R root:root $net_viz 

#VOLUME /var/run/docker.sock:/var/run/docker.sock,/:/hostroot:ro 
   
WORKDIR $app_home

CMD ./start_all.sh && echo "\n\n===Press enter when you see 'Started AppDynamics Machine Agent Successfully'====\n" && /bin/bash 
