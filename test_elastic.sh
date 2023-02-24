if "$(curl -s -o /dev/null -w ''%{http_code}'' 127.0.0.1:9250/_cat/health)" != "200"; then echo "Elstic not ready"; 

while true; if [[ "$(curl -s -o /dev/null -w ''%{http_code}'' 127.0.0.1:9250/_cat/health)" != "200" ]]; then echo "Elstic not ready"; else echo "Elastic OK!" && break; fi; do sleep 1; done

timeout 30 bash -c 'while true; if [[ "$(curl -s -o /dev/null -w ''%{http_code}'' 127.0.0.1:9250/_cat/health)" != "200" ]]; then echo "Elstic not ready"; else echo "Elastic OK!" && break; fi; do sleep 1; done'