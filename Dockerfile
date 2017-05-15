FROM outrigger/yeoman

ENV YO_P2_VERSION 2.2.0
ENV PATTERN_LAB_STARTER_VERSION 2.0.0
ENV GADGET_VERSION 1.0.0
ENV P2_ENV_VERSION 1.2.0

# Need root user for installing
USER root

#RUN npm install --global --silent generator-pattern-lab-starter@v$PATTERN_LAB_STARTER_VERSION
RUN npm install --global --silent generator-gadget@v$GADGET_VERSION
# These generators remain private and so cannot be installed yet.
#RUN npm install --global --silent git+ssh://bitbucket.org/phase2tech/generator-p2.git#v$YO_P2_VERSION

# Back to yeoman user for running
USER yeoman

# Default command argument passed to yo as generator name
CMD ["p2"]
