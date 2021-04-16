export REMOVE_IMAGE=$(docker images -q tiny_test_log)

if [ "$REMOVE_IMAGE" != "" ]; then
    docker rm -f $REMOVE_IMAGE
fi