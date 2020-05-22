## node-sonar-scanner

#### Description

SonarQube Scanner in NodeJS environment for scanning typescript and javascript projects.

#### Run

most simple way of running the container

    docker run --rm -v /<projectDir>:/data 5gsystems/node-sonar-scanner sonar-scanner

more advanced way (including custom properties and java tls trust store override)

    docker run --rm -v /var/lib/drone/cacerts:/usr/lib/jvm/default-jvm/lib/security/cacerts \
      -v /<configDir>/sonar-scanner.properties:/sonar-scanner/conf/sonar-scanner.properties \
      -v /<projectDir>:/data noenv/node-sonar-scanner sonar-scanner -Dsonar.sources=<srcDir> \
      -Dsonar.projectKey=<projectKey> -Dsonar.exclusions=<filesToExclude>

#### Source

https://github.com/noenv/node-sonar-scanner
