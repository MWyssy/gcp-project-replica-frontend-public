import {expect, test} from "vitest";
import {successNotification} from "./notification";

test("successNotification is a function", () => {
  expect(typeof successNotification).toBe("function");
});
