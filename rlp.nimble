mode = ScriptMode.Verbose

packageName   = "rlp"
version       = "1.0.1"
author        = "Status Research & Development GmbH"
description   = "RLP serialization library for Nim"
license       = "Apache2"
skipDirs      = @["tests"]

requires "nim >= 0.17.0", "ranges >= 0.0.1"

proc configForTests() =
  --hints: off
  --debuginfo
  --path: "."
  --run

task test, "run CPU tests":
  configForTests()
  setCommand "c", "tests/all.nim"
