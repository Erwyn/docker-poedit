FROM ubuntu:trusty

MAINTAINER Martin Goyot (Erwyn) <martin@piwany.com>

RUN apt-get update

RUN apt-get install -y libgtk2.0-0
RUN apt-get install -y poedit

RUN useradd -m -d /data -p pouetlachouette runner
RUN sed -Ei 's/sudo:x:27:/sudo:x:27:runner/' /etc/group
RUN sed -Ei 's/(\%sudo\s+ALL=\(ALL\:ALL\) )ALL/\1 NOPASSWD:ALL/' /etc/sudoers

ENTRYPOINT ["/usr/bin/sudo", "-u", "runner", "-H", "-E", "/usr/bin/poedit"]
