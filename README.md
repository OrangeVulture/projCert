# Edureka Project Certificate for DevOps

## Batch: 20 April - 13 May, 2020

## Link: https://github.com/OrangeVulture/projCert

###  Checklist for Jobs
1. Install and configure puppet agent on the slave node (Job 1) 

2. Sign the puppet certificate on master using Jenkins (Job 2)

3. Trigger the puppet agent on test server to install docker (Job 3)

4. Pull the PHP website, Dockerfile and Selenium JAR from your git repo and build and deploy
your PHP docker container. After this test the deployment using Selenium JAR file. (Job 4)

5. If Job 4 fails, delete the running container on Test Server

### Steps for executing the project

1. Setup connection on Jenkins with Master node and Slave Node. It includes creating a slave node through master node Jenkins Dashboard.
2. Setup Puppet on Slave node. The conf files need to be updated with the master and slave information. Connect Puppet with Master VM. 
3. Sign the certificate of Slave VM on Master VM
```
puppet cert list --all
puppet cert sign --all
```

4. Create a puppet file to install docker with content as the one in the repository. 
```
pdk new module install-docker
cd install-docker/manifests 
vim init.pp
```
5. Jenkins Pipeline needs to be created with the jobs interconnected. The job1 instructs to pull the repository and build the DockerFile
6. 2nd Job instructs to run the test.jar file. It should give a Fail result when run. 
7. As the 2nd job failed, the 3rd job will run which is instructed to stop the running container. Afer stopping, the container is deleted.   
