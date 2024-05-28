Description
===========

Using ``keycloak`` version 17.0


Usage
=====

To start with ``keycloak``, just put this service in your
``compose.yml``::

    keycloak:
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
