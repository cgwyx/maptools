#FROM conda/miniconda3
FROM continuumio/miniconda3

RUN conda update --all -y &&\
    conda config --add channels bioconda &&\
    conda config --add channels conda-forge &&\
    conda config --add channels r &&\
    conda install -y -c bioconda bwa bowtie2 hisat2 biobambam
    conda install -y -c bioconda/label/cf201901 samtools
    #conda install -y -c bioconda bwa bowtie2 hisat2 biobambam samtools openssl=1.0

CMD ["/bin/bash"]
