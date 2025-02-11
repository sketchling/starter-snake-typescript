FROM public.ecr.aws/bitnami/node:16-prod

ARG NODE_ENV
ARG LOG_LEVEL
ARG PORT

ENV NODE_ENV=$NODE_ENV
ENV LOG_LEVEL=$LOG_LEVEL
ENV PORT=$PORT

# Bundle app source
COPY node_modules node_modules
COPY build build

EXPOSE $PORT

CMD [ "node", "build/index.js" ]
