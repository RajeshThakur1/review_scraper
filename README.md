# review_scraper

create the conda env

```commandline
 conda create --prefix ./env python=3.7 -y
```

To activate the conda env

```commandline
 conda activate .\env\ 
```

install the requirements
```commandline
pip install -r requirements.txt

```

Intilize the conda env for powershell

```commandline

conda init powershell
conda activate

```

Restart the terminal
```commandline

conda config --set env_prompt '({name})'
```
jupyter 500 internal server error
```commandline
pip install --upgrade jupyterhub
pip install --upgrade --user nbconvert

```

If you are inside a conda environment, run the following command instead.
```commandline
conda install nbconvert==5.4.1
```

if still not work
```commandline
pip install ipython
pip install --upgrade "ipython[all]"
```

To Stop the container

```docker stop <container_name>```
To remove the unnecessary contaners
docker system prune

To build the image from the Dockerfile

```docker build -t review_scraper:v1.2 .```

to see the images

``` docker images``

Tag to your local image

```docker tag review_scraper:v1.1 rajesh222/review_scraper:v1.1```

to push you changes 

```docker push rajesh222/review_scraper:v1.1```
