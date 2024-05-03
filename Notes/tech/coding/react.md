---
id: react
aliases: []
tags:
  - development
  - frontend
  - react
  - programming
---

### Articles
- Using the url as a state management [jacobparis](https://www.jacobparis.com/content/url-as-state-management)
### Prevent useEffect render on mount

Create a custom useEffect hook
```js
import { DependencyList, EffectCallback, useEffect, useRef } from 'react';

export function useDidUpdateEffect(
  effect: EffectCallback,
  deps?: DependencyList
) {
  // a flag to check if the component did mount (first render's passed)
  // it's unrelated to the rendering process so we don't useState here
  const didMountRef = useRef(false);

  // effect callback runs when the dependency array changes, it also runs
  // after the component mounted for the first time.
  useEffect(() => {
    // if so, mark the component as mounted and skip the first effect call
    if (!didMountRef.current) {
      didMountRef.current = true;
    } else {
      // subsequent useEffect callback invocations will execute the effect as normal
      return effect();
    }
  }, deps);
}
```
Source: [stackoverflow](https://stackoverflow.com/a/66014727)

### Wrap component into custom one

A better way to customize third-party components, create a custom one with your
customizations and use it, instead of copy-paste customizations everywhere.

```js
import * as React from 'react';
import { ReactNode } from 'react';

import { Link, LinkProps } from '@chakra-ui/react';

type VariantType = 'primary' | 'secondary';

type Props = {
  variant?: VariantType;
  children: ReactNode;
} & Pick<LinkProps, 'href'>;

export const LinkComponent = ({ variant = 'primary', children, ...props }: Props) => {
  return (
    <Link variant={variant} {...props}>
      {children}
    </Link>
  );
};
```
