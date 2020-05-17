FROM node

WORKDIR /root
RUN git clone --depth=1 https://github.com/sourcegraph/javascript-typescript-langserver
WORKDIR javascript-typescript-langserver
RUN npm install && npm run build

CMD bash -c "node lib/language-server-stdio"
