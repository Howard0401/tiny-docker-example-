export REMOVE_IMAGE=$(docker images -q tiny_test_log)

if [ "$REMOVE_IMAGE" != "" ]; then
    docker rmi -f $REMOVE_IMAGE
fi