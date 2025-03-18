### String Calculation

#### How to execute the function
  Execute the following command in the terminal at the project location:

```Shell
ruby run_calculator.rb
```
  Provide the comma seperated numbers

```
Enter comma-separated numbers: 1,3
Sum: 4
```

We receive the sum of their inputs.

#### Test case
  Execute the following command to run the test cases.

```Shell
rspec
```

#### Examples

```Shell
Enter comma-separated numbers:
Sum: 0

Enter comma-separated numbers: 2,4
Sum: 6

Enter comma-separated numbers: 1\n2
Sum: 3

Enter comma-separated numbers: //;\n1;2
Sum: 3

Enter comma-separated numbers: //;\n1;-2,-3
RuntimeError: negative numbers not allowed: -2, -3
```
