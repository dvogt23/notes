# TypeScript

### Enum map specific values

```ts
enum Size {
  small = 'small',
  middle = 'middle',
  large = 'large',
}

type SizeMapType<T> = { [key in Size]?: T } & { default: T };

// alternativly something like
// type SizeMapType<T> = Partial<Record<Size, T>>;

const SizeSpecificValue: SizeMapType<Number> = {
  [Size.small]: 12,
  [Size.middle]: 22,
  [Size.large]: 32,
  default: 0
}

// fetch data from api and map to enum
const sizeFromApi = Size.middle

const value = SizeSpecificValue[sizeFromApi] || SizeSpecificValue.default
```