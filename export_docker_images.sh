for img in surfjudge-rust-websocket surfjudge-actix surfjudge-pyramid
do
    echo "Exporting docker image $img to $img.tar.gz"
    sudo docker save $img | gzip > "$img.tar.gz"
done
