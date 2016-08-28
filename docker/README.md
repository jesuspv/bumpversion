Image for https://github.com/peritus/bumpversion.

A convenient way to run it is to define the following alias in your project:

```
alias bumpversion='docker run \
   --env USER  --env USER_ID=`id -u` \
   --env GROUP --env GROUP_ID=`id -g` \
   --interactive --tty --rm \
   --volume $PWD:/home/$USER/host \
   bumpversion'
```

Then, you can just use bumpversion as stated in https://github.com/peritus/bumpversion (for instance, creating a .bumpversion.cfg in your project root).

The containerized bumpversion runs with the host user and main group as stated in https://denibertovic.com/posts/handling-permissions-with-docker-volumes.
