const std = @import("std");
const punch = @import("punch");
const parser = @import("parser.zig");

pub fn main() !void {
    const first_arg = std.os.argv[0];
    std.debug.print("Type: {s}\n", .{@typeName(@TypeOf(first_arg))});

    std.debug.print("There are {d} args:\n", .{std.os.argv[1..].len});
    for (std.os.argv[1..]) |arg| {
        std.debug.print("  {s}\n", .{arg});
    }

    const a = parser.parse(std.os.argv[1..]);
    if (a == 1) {
        std.debug.print("We're a normal status!\n", .{});
    }
}

test {
    _ = parser;
}
