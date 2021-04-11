for img in surfjudge-rust-websocket surfjudge-actix
do
    zcat "$img.tar.gz" | sudo docker load
done
