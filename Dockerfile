FROM akshmakov/kicad-docker:v5-builder
RUN apt-get update &&\
    apt-get install -y \
    	    transfig \
    	    libgtk-3-0 \
	    libcairo2 \
	    libgit2-24 \
	    imagemagick \
	    git 
COPY --from=akshmakov/eeshow:v5 /usr/local/bin /usr/local/bin
WORKDIR /workspace

