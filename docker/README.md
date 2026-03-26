# Shell scripts (.sh files) and some markdown doc
## All of these files revolve around creating Docker containers for Jupyter obtained from quay.io

***START HERE -- https: //jupyter-docker-stacks.readthedocs.io/en/latest/*** 

I use these files for daily work, they may or may not help you.  Included is a notebook where I basically dumped my markdown notes on Docker. It's very idiosyncratic.

#### Notes to self: 
On local machine create a directory for housing the notebook and the work directory.  For example:
```
 - mkdir learning-docker-jupyter
 - mkdir learning-docker-jupyter/work
 - sh run-scipy-docker-container.sh learning-docker-jupyter
```
This should 
   - download and install latest container for jupyter with conda/scikit
   - bring up the server
!This doesn't work if you already have a notebook on the port used in the script!

Yeah, don't trust me, read the shell scripts before you run them.
