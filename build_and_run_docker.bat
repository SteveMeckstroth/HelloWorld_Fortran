rem Build the helloworld image
docker build -t fortrancontainer https://github.com/SteveMeckstroth/HelloWorld_Fortran.git --no-cache

rem Run the helloworld image
docker run fortrancontainer