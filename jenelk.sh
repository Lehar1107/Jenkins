
dockerinstall

choice="$1"
case $choice in
        elasticsearch)
           component="elasticsearch"
        container_name="elasticsearch-container-$(date +%Y%m%d%H%M%S)"
        /usr/bin/docker run -d --name "$container_name" -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.15.0


        echo "Elasticsearch is now running in a Docker container."
                ;;
        kibana) echo "you select kibana"
                ;;
        quit) echo "Quitting" exit
                ;;
        *) echo "default selection";;
esac



