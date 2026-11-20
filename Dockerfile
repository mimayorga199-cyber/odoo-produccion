FROM odoo:17.0
USER root
COPY start.sh /start.sh
RUN chmod +x /start.sh
USER odoo
ENTRYPOINT ["/start.sh"]
