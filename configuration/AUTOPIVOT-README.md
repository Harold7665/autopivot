![Screenshot](./activeviam-logo.svg)
# AutoPivot for BD

## If you run the project for the first time
- Follow the instructions steps
- Check that your server started correctly (going to ActiveUI URL)
- Stop your server
- Follow the data input steps
- Follow the instructions steps

## Instructions
- Run `StartAutoPivot.bat` or `StartAutoPivot.sh` according to your OS to launch AutoPivot server
- Note: You must set `CATALINA_HOME` or have an apache-tomcat installation in a `tomcat` folder at the same level as the deployment folder or one level above

## Data input
- Add your CSV file in `<deployment>/data/`
- Set the fileName property in `<deployment>/pivot/webapps/autopivot/WEB-INF/classes/autopivot.properties` according to your CSV file

## ActiveUI
- ActiveUI is available on [http://localhost:8080/autopivot](http://localhost:8080/autopivot)
