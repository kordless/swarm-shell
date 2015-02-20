## She Sells Giant Swarm Shells 

Ever want to terminal into a container? How about from the web?

![i know kung fu](http://i.imgur.com/SQIGyhQ.jpg)

This cookbook example builds on the [swarm-ngrok](https://github.com/kordless/swarm-ngrok) example by replacing the [Flask application container](https://github.com/kordless/swarm-ngrok/tree/master/flask-static) with a container running [Shellinabox](https://github.com/jayschwa/shellinabox). The combination of these two containers provides a way to 'terminal' into one of the containers and gain shell access to the container.

Here's a screenshot of a connection to a container running several panes using **screen**.

![](https://raw.githubusercontent.com/kordless/swarm-shell/master/assets/shell.png)

If you want to install Shellinabox locally, [check out this blog post](http://www.tecmint.com/shell-in-a-box-a-web-based-ssh-terminal-to-access-remote-linux-servers/).

### Prerequisites

The [standard prerequisites](https://github.com/kordless/swarm-ngrok#prerequisites) apply to this project. At a minimum you need the following:

* A Giant Swarm [account](https://giantswarm.io).
* The **swarm** command line client [installed](http://docs.giantswarm.io/reference/installation/).
* A functional install of [boot2docker](https://docs.docker.com/installation/mac/).

Again, the [swarm-ngrok guide](https://github.com/kordless/swarm-ngrok#prerequisites) has more details on fulfilling the prerequisites, if you get stuck.

### Video Walkthrough

Here's a quick and dirty walkthrough of launching the project on Giant Swarm. I go into a bit of detail on how to change passwords and running a few screens. I've recently been trying to do all my videos in one take and try to hit 5 minutes on them. Apologies for rambling on a bit there toward the end.  :)

[![](https://raw.githubusercontent.com/kordless/swarm-shell/master/assets/video.png)](https://vimeo.com/120117064)

### Checkout and Launch

You can checkout the code by doing the following:

    git clone https://github.com/kordless/swarm-shell.git

Change into the directory:

	cd swarm-shell

There's nothing left to do but push that shizzle:

    make swarm-up

Once that completes, you'll need to find the URL for Ngrok:

	cd docker-ngrok
    swarm logs <instance-id-for-ngrok-shell-component> | grep established
    
### Connecting to the Container
 
Point your web browser at the Ngrok URL. Here's an example:
 
 	https://785fb064.ngrok.com/
 	
Once you connect, login with the user/pass combination **giant/swarm**.  If you want to change the password, edit the Docker script in the **shellinabox** directory and change **swarm** to something else.
