#!/bin/tcsh

# Executes the JAR file using JDK11, with some assumptions about the location of the JavaFX libraries. Since JDK11
# these have been detatched from the main build. A copy of the JVM parts is included in the libjfx directory of this
# project, but the platform-specific parts have to be installed somewhere (see https://gluonhq.com/products/javafx/)
# and then referred to during the execution process.

setenv BASE {$HOME}/cdd/bax
setenv CP ${BASE}/pkg/BioAssayTemplate.jar
setenv JAVA /Library/Java/JavaVirtualMachines/jdk-11.0.1.jdk/Contents/Home/bin
setenv JFX /opt/javafx-sdk-11.0.1/lib

$JAVA/java --module-path $JFX --add-modules=javafx.controls -cp $CP com.cdd.bao.Main edit $*:q --onto ../ontology/*.ttl
