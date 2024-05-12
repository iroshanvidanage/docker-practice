You can pass arguments or environment variables to a custom `ENTRYPOINT` or `CMD` script in Docker in several ways¹²³⁴:

1. **Command Line Arguments**: You can pass command line arguments directly to the `docker run` command¹. These arguments will be appended to the `ENTRYPOINT` command¹. For example:

    ```bash
    docker run my-image arg1 arg2 arg3
    ```

    In this case, `arg1`, `arg2`, and `arg3` are passed as arguments to the `ENTRYPOINT`¹.

2. **Environment Variables**: You can pass environment variables using the `-e` option with the `docker run` command¹⁴. For example:

    ```bash
    docker run -e VAR1=value1 -e VAR2=value2 my-image
    ```

    In this case, `VAR1` and `VAR2` are set as environment variables inside the Docker container¹⁴.

3. **Shell Scripts**: If you're using a shell script as your `ENTRYPOINT` or `CMD`, you can use environment variables directly in the script². For example, if you have an environment variable `ADDRESSEE`, you can use it in your script like so:

    ```bash
    echo "Hello, $ADDRESSEE!"
    ```

    In this case, `$ADDRESSEE` is replaced with the value of the `ADDRESSEE` environment variable when the script is run².

4. **Dockerfile `ENV` Instruction**: You can also set environment variables in your Dockerfile using the `ENV` instruction⁴. These variables will be available to your `ENTRYPOINT` and `CMD` scripts⁴. For example:

    ```Dockerfile
    ENV VAR1=value1
    ENV VAR2=value2
    ```

    In this case, `VAR1` and `VAR2` are set as environment variables inside any Docker container built from this Dockerfile⁴.

Remember, if you're using the exec form of `ENTRYPOINT` (i.e., `ENTRYPOINT ["executable", "param1", "param2"]`), it does not invoke a command shell, so normal shell processing does not happen². If you want shell processing, use the shell form of `ENTRYPOINT` (i.e., `ENTRYPOINT command param1 param2`) or execute a shell directly².



Source: Conversation with Bing, 5/12/2024
(1) docker run pass arguments to entrypoint - Stack Overflow. https://stackoverflow.com/questions/53543881/docker-run-pass-arguments-to-entrypoint.
(2) How do I use Docker environment variable in ENTRYPOINT array?. https://stackoverflow.com/questions/37904682/how-do-i-use-docker-environment-variable-in-entrypoint-array.
(3) Use docker run command to pass arguments to CMD in Dockerfile. https://stackoverflow.com/questions/40873165/use-docker-run-command-to-pass-arguments-to-cmd-in-dockerfile.
(4) How to Pass Environment Variables to Docker Containers - How-To Geek. https://www.howtogeek.com/devops/how-to-pass-environment-variables-to-docker-containers/.
(5) undefined. https://www.cyberciti.biz/tips/bash-shell-parameter-substitution-2.html.