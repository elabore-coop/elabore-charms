#FROM keycloak/keycloak:24.0.4 as builder
#
#ENV KC_METRICS_ENABLED=true
#ENV KC_FEATURES=token-exchange
#ENV KC_DB=postgres
#
#WORKDIR /opt/keycloak
## for demonstration purposes only, please make sure to use proper certificates in production instead
#RUN /opt/keycloak/bin/kc.sh build

FROM keycloak/keycloak:24.0.4
#COPY --from=builder /opt/keycloak/ /opt/keycloak/
WORKDIR /opt/keycloak
ENV KC_LOG_LEVEL=INFO
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--optimized"]
