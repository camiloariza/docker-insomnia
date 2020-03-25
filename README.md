# docker-insomnia

Docker container for [Insomnia](https://insomnia.rest/) API debugger.

## Usage

Suggested use:

```shell
docker run -it --rm \
       --net host \
       -e DISPLAY=unix$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       -v $(pwd):/data/ \
       camiloariza/insomnia"
```
