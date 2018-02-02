#!/bin/bash

fnSum()
{

#Validating the input
echo "fnSum: Validating the input ${curdt} ">>${fnMainLog}
if [ $# -ne 2 ]
then
  echo "fnSum: error Wrong number of input parameters: $@">>${fnMainLog}
  exit 1
fi

#Adding the input numbers
sum=$((${1} + ${2}))
echo "fnSum: Sum of numbers ${1} and ${2} is: ${sum}">>${fnMainLog}

echo "fnSum: Function executed successfully ${curdt}">>${fnMainLog}

}



fnHello()
{
echo "fnHello: You called Hello function mr/mrs: ${1} ${curdt}">>${fnMainLog}
}

