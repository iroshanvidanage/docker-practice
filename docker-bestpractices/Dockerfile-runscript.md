Sure, using custom entrypoints with shell scripts in Docker allows you to perform initialization tasks or set up environment variables before the main process starts¹². Here's how you can do it:

1. **Create a Shell Script**: Write a shell script that performs the necessary tasks. This could be anything from modifying configuration files to setting up a database¹².

2. **Make the Script Executable**: Ensure that the shell script is executable. You can do this by running `chmod +x script.sh` on your host machine before copying it into the Docker image¹.

3. **Copy the Script into the Docker Image**: Use the `COPY` instruction in your Dockerfile to copy the shell script from your host machine into the Docker image¹².

4. **Set the Entrypoint**: Use the `ENTRYPOINT` instruction in your Dockerfile to specify the shell script as the entrypoint¹².

Here's an example Dockerfile that uses a custom shell script as the entrypoint:

```Dockerfile
# Use a base image
FROM ubuntu:20.04

# Copy the shell script into the image
COPY ./script.sh /script.sh

# Make the script executable
RUN chmod +x /script.sh

# Set the entrypoint to the shell script
ENTRYPOINT ["/script.sh"]
```

And here's an example `script.sh`:

```bash
#!/bin/bash
echo "Hello, World!"
```

In this example, when a container is started from the Docker image, it will run the `script.sh` shell script, which prints "Hello, World!"¹².

Remember to include the shebang (`#!/bin/bash`) at the top of your shell script to specify that the script should be run using bash¹².

Also, if your script ends, the container will also end. So if you want your container to keep running, make sure your script doesn't end, or it ends by starting a long-running command¹.


Source: Conversation with Bing, 5/12/2024
(1) Using custom shell script as docker entrypoint - Stack Overflow. https://stackoverflow.com/questions/42922079/using-custom-shell-script-as-docker-entrypoint.
(2) Running a custom script using entrypoint in docker-compose. https://stackoverflow.com/questions/45211594/running-a-custom-script-using-entrypoint-in-docker-compose.
(3) Run Custom Scripts In Docker With Arguments - ENTRYPOINT Vs CMD. https://devopscube.com/run-scripts-docker-arguments/.
(4) undefined. https://hub.docker.com/_/solr/.