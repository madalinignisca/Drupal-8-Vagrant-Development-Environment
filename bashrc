# needs to be sourced by vagrant user when starting or changed

# composer using custom build on top of the official image
composer () {
    tty=
    tty -s && tty=--tty
    docker run \
        $tty \
        --interactive \
        --rm \
        --user $(id -u):$(id -g) \
        --volume $(pwd):/app \
        composer-x "$@"
}

php () {
    tty=
    tty -s && tty=--tty
    docker run \
        $tty \
        --interactive \
        --rm \
        --user $(id -u):$(id -g) \
        --volume $(pwd):/app \
        php-x "$@"
}