# Race Condition in Asynchronous Completion Handler

This repository demonstrates a potential race condition in Swift code using asynchronous completion handlers. The `fetchData` function simulates a network request and calls the completion handler with either success or failure.  However, if `fetchData` is called multiple times before the previous call's completion handler has executed, it can lead to unexpected results or crashes.

The `bug.swift` file contains the buggy code, and `bugSolution.swift` demonstrates a solution using semaphores or other synchronization mechanisms.