FROM adoptopenjdk/openjdk11:x86_64-alpine-jre-11.0.19_7

RUN addgroup -S user --gid 1001 && adduser -S  -D user --uid 1001 -G user

USER user

WORKDIR /user

# Labels
LABEL base-java11.created=$DOCKERFILE_CREATED