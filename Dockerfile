FROM quay.io/terraform-docs/terraform-docs:latest

COPY entrypoint.sh /code/entrypoint.sh

RUN chmod +x /code/entrypoint.sh

WORKDIR /code/modules

ENTRYPOINT ["sh","/code/entrypoint.sh"]
