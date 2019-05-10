Running Sencha CMD within a Docker container
(Thank you for Josh VanderLinden <codekoala@gmail.com> for the kick-start - https://github.com/codekoala/docker-sencha-cmd)

To run as a one-liner `docker` command: ```
docker run --rm -it \
-v $(pwd):/src -w /src \
sencha/cmd-docker app build
```