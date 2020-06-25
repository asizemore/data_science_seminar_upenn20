FROM jupyter/datascience-notebook:latest

RUN pip install iisignature
RUN pip install kmapper
RUN pip install sklearn
RUN pip install plotly
RUN pip install cufflinks
RUN pip install networkx
RUN pip install jupyterthemes
RUN jt -t chesterish
RUN pip install matplotlib-venn
RUN pip install bctpy
RUN pip install bokeh==1.3.4
RUN pip install utils





USER root
RUN apt-get update && apt-get install -y \
  libz-dev
USER jovyan



EXPOSE 8888
