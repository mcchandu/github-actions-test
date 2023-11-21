// sonarqube-test.js

// Unused variable
const unusedVariable = "This variable is unused";

// Function with too many parameters
function tooManyParameters(param1, param2, param3, param4, param5, param6) {
  return param1 + param2 + param3 + param4 + param5 + param6;
}

// Function with a nested ternary operator
function nestedTernaryOperator(value) {
  return value > 0 ? "Positive" : value < 0 ? "Negative" : "Zero";
}

// Function with duplicated code
function duplicatedCodeExample(a, b) {
  if (a > 0) {
    console.log("a is positive");
  } else {
    console.log("a is not positive");
  }

  if (b > 0) {
    console.log("b is positive");
  } else {
    console.log("b is not positive");
  }
}

// Function with a switch statement without a default case
function switchStatementWithoutDefault(value) {
  switch (value) {
    case 1:
      console.log("Value is 1");
      break;
    case 2:
      console.log("Value is 2");
      break;
    // Missing default case
  }
}

// Calling a function without using the result
function unusedReturnValue() {
  Math.random(); // This result is not used
}

// Incorrect equality check
function incorrectEqualityCheck(a, b) {
  if (a = b) {
    console.log("a is equal to b");
  } else {
    console.log("a is not equal to b");
  }
}

// Intentional infinite loop
function infiniteLoop() {
  while (true) {
    console.log("This is an infinite loop");
  }
}

// Example usage
const result = tooManyParameters(1, 2, 3, 4, 5, 6);
console.log("Result of tooManyParameters:", result);

nestedTernaryOperator(42);

duplicatedCodeExample(10, -5);

switchStatementWithoutDefault(2);

unusedReturnValue();

incorrectEqualityCheck(5, 5);

// Commented out to avoid an actual infinite loop during testing
// infiniteLoop();
