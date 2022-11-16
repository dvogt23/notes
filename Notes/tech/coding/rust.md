## Rust notes

### Learning

**TODO:**

 - [ ] wasm tutorial -> [linuxfoundation](https://training.linuxfoundation.org/announcements/using-web-assembly-written-in-rust-on-the-server-side/)
 - [ ] Crossplatform desktop app -> [css-tricks](https://css-tricks.com/how-i-built-a-cross-platform-desktop-application-with-svelte-redis-and-rust/)

### Wrapper types

**Box** This abstraction is a low cost abstraction for dynamic allocation. If you want to allocate some memory on the heap and safely pass a pointer to that memory around, this is ideal.

**Rc** is a reference counted pointer for multiple owning. 

Source: [Wrapper types](https://manishearth.github.io/blog/2015/05/27/wrapper-types-in-rust-choosing-your-guarantees/)

### Articles

 - Some nice tipps & tricks from [federicoterzi](https://federicoterzi.com/blog/12-rust-tips-and-tricks-you-might-not-know-yet/)

## Error handling

Rusts result type is a great construct for creating error chains, something like:

```rust
fn read_config_file(path: &str)
    -> Result<String, ConfigFileError> {
    std::fs::read_to_string(path)
        .map_err(ConfigFileError::ReadError)
}

fn parse_config_file(file: String) 
    -> Result<i32, ConfigFileError> {
    file.parse()
        .map_err(ConfigFileError::ParseError)
}

fn work_with_config_file(path: &str) 
    -> Result<i32, ConfigFileError> {
    // No ? required at all - just directly return
    // the Result, since the types match!
    read_config_file(path).and_then(parse_config_file)
    // .and_then(something_else).and_then(even_more_things) ....
}
```

Source: [naiveai](https://naiveai.hashnode.dev/rust-result-cool), [bruntsushi](https://blog.burntsushi.net/rust-error-handling/)