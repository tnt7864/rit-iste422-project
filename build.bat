javac -cp lib/junit-4.12.jar;lib/hamcrest-core-1.3.jar ./src/*/java/*.java -d build
java -cp build;lib/junit-4.12.jar;lib/hamcrest-core-1.3.jar org.junit.runner.JUnitCore EdgeConnectorTest
java -cp build RunEdgeConvert
