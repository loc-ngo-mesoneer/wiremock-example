docker run -it --rm \
  -p 9090:8080 \
  --name wiremock \
  -v $PWD/stubs:/home/wiremock \
  -v $PWD/extensions:/var/wiremock/extensions \
  wiremock/wiremock:2.34.0 \
  --extensions org.wiremock.webhooks.Webhooks \
  --verbose
