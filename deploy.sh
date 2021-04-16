export IMG_NAME=tiny_test_log
export ACTIVE_IMAGE_ID=$(docker inspect --format="{{.Id}}" $IMG_NAME)
export REMOVE_IMAGE=$(docker images -q $IMG_NAME)

docker-compose down

# # RMI for remove active container, image
# RMI() {
#     if [ "$1" != "" ]; then
#         docker rm -f $1
#     fi
#     if [ "$2" != "" ]; then
#         docker rmi -f $2
#     fi
# }

# if [ "$IMG_NAME" != "" ]; then 
#     echo "ACTIVE_IMAGE_ID=$ACTIVE_IMAGE_ID"
#     echo "REMOVE_IMAGE=$REMOVE_IMAGE"
#     RMI "$ACTIVE_IMAGE_ID" "$REMOVE_IMAGE"
# fi

docker-compose up -d 



    # if [ "$ACTIVE_IMAGE_ID" != ""]; then
    #     docker rm -f $ACTIVE_IMAGE_ID
    # fi
    # if [ "$REMOVE_IMAGE" != "" ]; then
    # docker rmi -f $REMOVE_IMAGE
    # fi