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
   - bring up the server:

WARNING:  This doesn't work if you already have a notebook on the port used in the script!
Please read/understand the shell scripts before you run them.

Finally, after you have run the script, the jupyter server will come up.  Don't ctrl-C out, that'll kill the server.

OK, so at the end of the log messages, you are given a token for the server and a URL for view jupyter lab from the browser.  However, that doesn't work. The port that is given is useful if you are working inside the container.  If you want to see jupyter on a browser that is running on your machine, then use the binding for the port.

Finally, keep track of the token and the URL.  Whenever you bring up a new server, its got a new name, new URL, new token.  Capture that.  
