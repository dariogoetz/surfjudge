echo "Exporting docker images"
sudo docker-compose build && sh export_docker_images.sh

echo "Generating frontend"
(cd surfjudge-vue-frontend && npm run prod && npm run prod-judging)

echo "Compiling archive"
tar cfvz release-$(date +%Y.%m.%d_%H.%M).tar.gz docker-compose.yml surfjudge-*.tar.gz surfjudge-vue-frontend/dist import_docker_images.sh install_release.sh surfjudge-actix/nginx/nginx.conf surfjudge-actix/nginx/nginx-judging.conf surfjudge-pyramid/nginx/nginx_traefik.conf .env surfjudge-pyramid/app
