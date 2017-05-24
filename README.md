# software-defined-command-center-demo
operation console could be more usable with the help of OSS tools

````
When you try this on centos7, please do
 $ cd /var/tmp/
 $ git clone https://github.com/tnaganawa/software-defined-command-center-demo.git
 $ cd software-defined-command-center-demo/
 $ sudo chcon -R -u system_u -r object_r -t svirt_sandbox_file_t -l s0 prometheus/ alertmanager/ execjson/ open-pager-url/ jupyter/
````
