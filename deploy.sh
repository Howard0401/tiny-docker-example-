export IMG_NAME=tiny_test_log
export ACTIVE_IMAGE_ID=$(docker inspect --format="{{.Id}}" $IMG_NAME)
export REMOVE_IMAGE=$(docker images -q $IMG_NAME)

# RMI for remove active container, image
function RMI() {
    if [ "$1" != ""]; then
        docker rmi -f $1
    fi
    if [ "$2" != "" ]; then
        docker rmi -f $2
    fi
}

if [ "$IMG_NAME" != ""]; then 
    RMI($ACTIVE_IMAGE_ID, $REMOVE_IMAGE)
fi

docker-compose up -d 



    # if [ "$ACTIVE_IMAGE_ID" != ""]; then
    #     docker rmi -f $ACTIVE_IMAGE_ID
    # fi
    # if [ "$REMOVE_IMAGE" != "" ]; then
    # docker rmi -f $REMOVE_IMAGE
    # fi