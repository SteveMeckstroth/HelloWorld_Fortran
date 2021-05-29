#HelloWorld_Fortran

# start by building the basic container
FROM centos:latest
LABEL org.opencontainers.image.authors="Steve Meckstroth <meckstss@gmail.com>"
RUN yum update -y
RUN yum install -y gcc-gfortran gdb make
RUN mkdir -p /fortran

# build the hello world code
COPY Makefile run_fortran.sh HelloWorld.f90 HelloAgainInput.txt /fortran/
WORKDIR /fortran/
RUN make HelloWorld

# configure the container to run the hello world executable by default
# CMD ["./HelloWorld"]
ENTRYPOINT ["./run_fortran.sh"]
