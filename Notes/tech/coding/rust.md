## Rust notes

Source: [Wrapper types](https://manishearth.github.io/blog/2015/05/27/wrapper-types-in-rust-choosing-your-guarantees/)

### Wrapper types
**Box** This abstraction is a low cost abstraction for dynamic allocation. If you want to allocate some memory on the heap and safely pass a pointer to that memory around, this is ideal.

**Rc** is a reference counted pointer for multiple owning. 
