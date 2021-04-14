for img in surfjudge-rust-websocket surfjudge-actix surfjudge-pyramid
do
    zcat "$img.tar.gz" | sudo docker load
done
