# software-defined-command-center-demo
operation console could be more usable with the help of OSS tools

````
When you try this on centos7, please do
 $ cd /var/tmp/
 $ git clone https://github.com/tnaganawa/software-defined-command-center-demo.git
 $ cd software-defined-command-center-demo/
 $ sudo chcon -R -u system_u -r object_r -t svirt_sandbox_file_t -l s0 prometheus/ alertmanager/ jupyter/
 $ sudo kubectl create -f pod.yaml

 To see containers are ok, type
 $ sudo kubectl get pod
 To see container IPs, type
 $ sudo kubectl describe pod sdcc-containers | grep IP
````

When pod is created, firstly access  
http://ip:8888 (jupyter),  
and open 'getting-started.ipynb'.


