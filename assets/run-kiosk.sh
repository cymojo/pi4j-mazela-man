#!/usr/bin/env bash
/sbin/init 3
export ENABLE_GLUON_COMMERCIAL_EXTENSIONS=true
java \
  -Degl.displayid=/dev/dri/card0 \
  -Dmonocle.egl.lib=/opt/javafx-sdk-17/lib/libgluon_drm-1.1.3.so \
  -Djava.library.path=/opt/javafx-sdk-17/lib \
  -Dmonocle.platform.traceConfig=false \
  -Dprism.verbose=false \
  -Djavafx.verbose=false \
  -Dmonocle.platform=EGL \
  --module-path .:/opt/javafx-sdk-17/lib \
  --add-modules javafx.controls \
  --module se.mejsla.vassare.fxgl.mazelaman/se.mejsla.vassare.fxgl.mazelaman.MazelaManApp $@
/sbin/init 5
