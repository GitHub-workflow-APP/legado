# Packaging Notes for legado

## Overview

**Packaging Guidinline:** Kotlin should support following command   for packaging.

```bash
$ gradle clean build -x test
```

**Manaual Packaging:**
Going through all the projects recursively and running following command and coping the target JAR file
to binary as it is the scannable artifact.
```bash
$ gradle clean build -x test
```

Project Paths which are successfully able to run `gradle clean build -x test`


| Project Path                           | Succceful|Artifact Name                                      |
|----------------------------------------|----------|---------------------------------------------------|
| /legado/                               | &#10003; |   <<due to lint issue no artifact geenerated  >>  |


