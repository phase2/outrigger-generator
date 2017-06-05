FROM outrigger/yeoman

ENV OUTRIGGER_DRUPAL_VERSION 3.1.0

# Need root user for installing
USER root

RUN npm install --global --silent generator-outrigger-drupal@v$OUTRIGGER_DRUPAL_VERSION

# Back to yeoman user for running
USER yeoman

# Default command argument passed to yo as generator name
CMD ["outrigger-drupal"]
