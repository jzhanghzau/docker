Bootstrap: docker
From: ubuntu:16.04
IncludeCmd: yes


%environment
  R_VERSION=3.4.3
  export R_VERSION
  R_CONFIG_DIR=/etc/R/
  export R_CONFIG_DIR

%labels
  Author Remy Dernat
  Version v0.0.1
  R_Version 3.4.3
  build_date 2020 Mar 4

%apprun R
  exec R "$@"

%apprun Rscript
  exec Rscript "$@"

%runscript
  exec R "$@"

%post
  apt-get update
  apt-get install -y software-properties-common
  add-apt-repository "deb http://cloud.r-project.org/bin/linux/ubuntu xenial/"
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
  apt-get update
  apt-get install r-base r-base-dev

  # installing some packages
  echo install.packages\(\"dplyr\"\, repos\=\'https://cloud.r-project.org\'\) | R --slave
  echo install.packages\(\"SILGGM\"\, repos\=\'https://cloud.r-project.org/\'\) | R --slave
  #echo install.packages\(\"FD\"\, repos\=\'https://cloud.r-project.org/\'\) | R --slave

    
    

 
