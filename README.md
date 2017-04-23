# GVE Scripts Setup Instructions
Follow the instructions below to download all GVE scripts.

## Running the scripts natively on your machine
Assuming you installed python3 and git properly, you can clone the individual repositories manually, or you can copy and execute the clone-repos.sh script which can be found here: https://raw.githubusercontent.com/cisco-gve/setup/master/clone-repos.sh

Note: For Windows users, please use Cygwin as shell. Please see https://www.cygwin.com

Run the clone-repos.sh script:
\#sh clone-repos.sh


## Running the script in Docker
Please download Docker from https://www.docker.com/community-edition

Pull and run the Cisco GVE Docker image:

\#docker pull hantzley/gve-box

\#docker run hantzley/gve-box

\#docker exec -it gve-box bash

You will land on /cisco-gve directory, where you should see a file called setup.sh

Execute the setup.sh script:

\#sh setup.sh


The repositories in script https://raw.githubusercontent.com/cisco-gve/setup/master/clone-repos.sh will be downloaded to your the /cisco-gve directory
