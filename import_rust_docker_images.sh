for img in surfjudge-rust-websocket surfjudge-public
do
    zcat "$img.tar.gz" | sudo docker load
done
