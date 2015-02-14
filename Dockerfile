# VERSION 1.0
# DOCKER-VERSION  1.2.0
# AUTHOR:         Richard Lee <lifuzu@gmail.com>
# DESCRIPTION:    Android-platform Image Container

FROM dockerbase/devbase-jdk

USER    root
# Run dockerbase script
ADD     android-platform.sh /dockerbase/
RUN     /dockerbase/android-platform.sh

USER    devbase
# Run dockerbase script
ADD     repo.sh /dockerbase/
RUN     /dockerbase/repo.sh

ENV     PATH $PATH:~/bin

ADD     build/userguide.md $HOME/UserGuide.md
