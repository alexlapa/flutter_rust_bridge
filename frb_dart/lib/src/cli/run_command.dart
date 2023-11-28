import 'dart:convert';
import 'dart:io';

/// {@macro flutter_rust_bridge.internal}
class RunCommandOutput {
  /// {@macro flutter_rust_bridge.internal}
  final String stdout;

  /// {@macro flutter_rust_bridge.internal}
  final int exitCode;

  /// {@macro flutter_rust_bridge.internal}
  const RunCommandOutput({required this.stdout, required this.exitCode});
}

/// {@macro flutter_rust_bridge.internal}
Future<RunCommandOutput> runCommand(
  String command,
  List<String> arguments, {
  String? pwd,
  Map<String, String>? env,
  bool shell = true,
  bool silent = false,
  bool? checkExitCode,
}) async {
  // ignore: avoid_print
  print(
      '\x1B[1m> $command ${arguments.join(' ')}\x1B[0m (pwd: $pwd, env: $env)');

  final process = await Process.start(
    command,
    arguments,
    runInShell: shell,
    workingDirectory: pwd,
    environment: env,
  );

  final ret = <String>[];
  final err = <String>[];

  process.stdout.transform(utf8.decoder).listen((line) {
    if (!silent) stdout.writeAndFlush(line);
    ret.add(line);
  });

  process.stderr.transform(utf8.decoder).listen((line) {
    if (!silent) stderr.writeAndFlush(line);
    err.add(line);
  });

  final exitCode = await process.exitCode;
  if ((checkExitCode ?? true) && (exitCode != 0)) {
    throw ProcessException(command, arguments,
        'Bad exit code ($exitCode). stderr=${err.join("")}', exitCode);
  }

  return RunCommandOutput(stdout: ret.join(''), exitCode: exitCode);
}

extension on IOSink {
  void writeAndFlush(String message) {
    write(message);
    flush();
  }
}
