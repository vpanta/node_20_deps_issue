load("@aspect_rules_js//js:defs.bzl", "js_run_binary")

def foo(name, **kwargs):
    args = kwargs.pop("args", [])
    js_run_binary(
        name = name,
        tool = "//packages/foo",
        args = args,
        out_dirs = [name],
        silent_on_success = False,
        chdir = native.package_name(),
        mnemonic = "foo",
        **kwargs
    )
