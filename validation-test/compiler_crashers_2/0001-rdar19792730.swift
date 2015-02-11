// RUN: not --crash %target-swift-frontend %s -emit-silgen
// XFAIL: no_asserts

// rdar://problem/19792730

public func foo<
    Expected : SequenceType,
    Actual : SequenceType,
    T : Comparable
    where
      Expected.Generator.Element == Actual.Generator.Element,
      Expected.Generator.Element == T
>(expected: Expected, actual: Actual) {}

public func foo<
    Expected : SequenceType,
    Actual : SequenceType,
    T : Comparable
    where
      Expected.Generator.Element == Actual.Generator.Element,
      Expected.Generator.Element == (T, T)
>(expected: Expected, actual: Actual) {}

