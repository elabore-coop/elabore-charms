Description
===========

Using ``keycloak`` version 24.0
DEV info : https://www.keycloak.org/server/containers

Usage
=====

To start with ``keycloak``, just put this service in your
``compose.yml``::

    keycloak:
      docker-compose:
        image: docker.0k.io/keycloak24.0.4-elabore:1.0.0
      options:
        admin-password: CHANGEME
      relations:
        web-proxy:
          frontend:
            domain: id.mydomain.fr

Customize theme
===============

You can customize theme by putting your theme in
``/srv/datastore/data/keycloak/opt/keycloak/themes``

For example copy the material folder from
https://github.com/MAXIMUS-DeltaWare/material-keycloak-theme and
restart ``keycloak``.

Then go to your admin console, log in and go to the realm/themes part
to choose you new theme
