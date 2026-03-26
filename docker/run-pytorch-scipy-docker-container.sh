# script to start up a docker container running the latest jupyter-pytorch image from quay.io
[[ -z "$1" ]] && { 
	echo;
	echo "The input parameter is empty. Example of use:";
	echo "   >> sh run-pytorch-scipy-docker-container.sh pytorch_sandbox";
	echo "where 'covid_data' is a directory in the pwd.  It should contain a 'work' directory";
	echo;
exit 1; }

# indicate which notebook to use - e.g. covid_data
cd $1/work

echo  SHARED DIRECTORY --  ${PWD}
echo  EXECUTING: docker run -it -p 10000:8888 -v "${PWD}":/home/jovyan/work quay.io/jupyter/scipy-pytorch:latest

docker run -it -p 10000:8888 -v "${PWD}":/home/jovyan/work quay.io/jupyter/pytorch-notebook:latest


