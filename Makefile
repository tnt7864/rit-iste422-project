all: clean run

clean:
	echo "Removing compiled classes"
	rm -rf build

build:
	echo "Compiling source code and unit tests..."
	javac -cp lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar -d build src/*/java/*.java

compile: build

test: compile
	echo "Running unit tests..."
	java -cp build:lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar: org.junit.runner.JUnitCore EdgeConnectorTest

run: compile
	echo "Running application..."
	java -cp build RunEdgeConvert
