## Rust notes

### Learning

**TODO:**

 - [ ] wasm tutorial -> [linuxfoundation](https://training.linuxfoundation.org/announcements/using-web-assembly-written-in-rust-on-the-server-side/)
 - [ ] Crossplatform desktop app -> [css-tricks](https://css-tricks.com/how-i-built-a-cross-platform-desktop-application-with-svelte-redis-and-rust/)

### Wrapper types

**Box** This abstraction is a low cost abstraction for dynamic allocation. If you want to allocate some memory on the heap and safely pass a pointer to that memory around, this is ideal.

**Rc** is a reference counted pointer for multiple owning. 

Source: [Wrapper types](https://manishearth.github.io/blog/2015/05/27/wrapper-types-in-rust-choosing-your-guarantees/)
