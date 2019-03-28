# Maven

### Build subproject with dependencies include
```bash
mvn clean install -pl [project name] -amd
```

### Change project version
```bash
mvn versions:set -DnewVersion=1.1.0 && mvn versions:commit
```