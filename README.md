# Unexpected Error Handling in VBScript Function

This repository demonstrates a common issue in VBScript error handling where the use of `Err.Raise` without proper context or error code checking can lead to unexpected behavior. The `bug.vbs` file shows the problematic code, while `bugSolution.vbs` provides a corrected version.

## Bug Description:
The `MyFunction` in `bug.vbs` raises an error if the input parameter is empty. However, it doesn't provide enough information about the error's context.  Moreover, calling functions that might raise errors without checking `Err.Number` can mask the real problem.

## Solution:
The `bugSolution.vbs` file addresses the issue by:

1.  Using more descriptive error messages including specific details about the parameter that caused the error.
2. Implementing proper error checking after the function call to handle potential errors gracefully.
3. Providing a more user-friendly error message to the end-user.