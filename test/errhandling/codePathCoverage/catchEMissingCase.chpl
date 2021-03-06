config const coinFlip = true;

class GoofyError: Error {
}

proc foo(): int throws {
  if (coinFlip) {
    return 42;
  } else {
    throw new owned Error();
  }
}

proc bar() throws {
  try {
    return foo();
  } catch e: GoofyError {
    if coinFlip then
      throw e;
  } catch {
    throw new owned GoofyError();
  }
}
  

var x = bar();
writeln(x);
