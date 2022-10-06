# JavaScript

## NextJS Error

If this error occures:

```
FATAL ERROR: Ineffective mark-compacts near heap limit Allocation failed
```

You just have to drop you `.next` dir for fix that.

## Use console print

Different type to print to console:

```javascript
console.log() – For general output of logging information.
console.info() – Informative logging of information.
console.debug() – Outputs a message to the console with the log level debug.
console.warn() – Outputs a warning message.
console.error() – Outputs an error message.

console.assert()

console.count() - count line execution
console.dir() - print object

console.group() - start group
console.groupEnd() - end group

console.memory() - check heap size

console.table() - print tabular data

console.time() - track time
console.timeEnd()

console.trace() - output stack trace
```

Source: [markodenic](https://markodenic.com/use-console-log-like-a-pro/)

## React location listener

To trigger event son laction change in React:

```js
import { useEffect } from 'react';

import { useHistory } from 'react-router-dom';

type EtrackWrapperProps = {
  et_et: string;
  et_pagename: string;
};

declare global {
  interface Window {
    gtag?: (key: string, trackingId: string, config: { page_path: string }) => void;
    et_eC_Wrapper?: (props: EtrackWrapperProps) => void;
  }
}

export type PushType = (id: string, pathname: string) => void;

interface TrackingProps {
  trackerId: string;
  update: PushType;
}

export const useTracking = ({ trackerId, update }: TrackingProps) => {
  const { listen } = useHistory();

  useEffect(() => {
    const unlisten = listen((location) => {
      update(trackerId, location.pathname);
    });

    return unlisten;
  }, [trackerId, update, listen]);
};
```
