FROM debian:stretch-slim

RUN apt-get update && apt-get install -y \
      certbot \
	  --no-install-recommends && apt-get clean && rm -r /var/lib/apt/lists/*

CMD ['bash']