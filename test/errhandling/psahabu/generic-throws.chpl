proc test(x) throws {
  throw new Error(x:string + " is a numeric type");
}

config const num = 42;
try {
  test(num);
} catch e {
  halt(e:string);
}
