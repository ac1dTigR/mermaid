FROM node:22.11.0-alpine3.19@sha256:2ef8a5348c8936329810271059b2c1ba88f293f4d6849e5d2ade22652c3d396c

USER 0:0

RUN corepack enable \
    && corepack enable pnpm

RUN apk add --no-cache git~=2.43.4 \
    && git config --add --system safe.directory /mermaid

ENV NODE_OPTIONS="--max_old_space_size=8192"

EXPOSE 9000 3333
