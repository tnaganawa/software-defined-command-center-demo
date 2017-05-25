# software-defined-command-center-demo
operation console could be more usable with the help of OSS tools

````
When you try this on centos7, please do
 $ cd /var/tmp/
 $ git clone https://github.com/tnaganawa/software-defined-command-center-demo.git
 $ cd software-defined-command-center-demo/
 $ sudo chcon -R -u system_u -r object_r -t svirt_sandbox_file_t -l s0 prometheus/ alertmanager/ jupyter/
 $ sudo kubectl create -f pod.yaml
````

When pod is created, firstly access  
http://ip:8888 (jupyter),  
and execute test-alert.ipynb

Then  
http://ip:9093 (alertmanager),  
will see several alerts,  
and webhook will be sent to  
http://ip (execjson),  
and  
http://ip:5001 (open-pager-url).

Check that execjson had done a job based on the alert, with execjson joblog feature.  
When open-pager-url is accessed, you'll see two windows are opened.  
One is for google, which contain some information for an alert :(, the other is for jupyter notebook, which contains all the information to deal that alert.


After that, check kibana, to see json resulted from execjson.  
http://ip:5601 (kibana)



There are some other applications for some usecases.  
http://ip:9090 (prometheus)  
http://ip:5000 (applcon)  
http://ip:9200 (elasticsearch)  


