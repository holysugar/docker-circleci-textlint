FROM node:8.1-slim
WORKDIR /textlint

RUN npm install -g \
    textlint \
    textlint-plugin-review \
    textlint-filter-rule-comments \
    textlint-filter-rule-whitelist \
    textlint-rule-preset-ja-technical-writing \
    textlint-rule-spellcheck-tech-word

RUN chown -R root:root /usr/local/lib/node_modules

COPY .textlintrc /etc/textlintrc
COPY textlint.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/textlint.sh

ENTRYPOINT ["/usr/local/bin/textlint.sh"]
CMD ["-h"]
