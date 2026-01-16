---
id: rails-learnhotwire
aliases: []
tags:
  - rails
  - hotwire
  - turbo
  - stimulus
  - ruby
---

## Meta

- [leanhotwire.com](https://learnhotwire.com/)
- [Repository](https://github.com/learnhotwire/rails)
- Hoster: Chris Oliver (excid3)

## Commands

- List local gems
  `gem list --local`
- Create new rails app in specific version
  `rails _8.0.3_ new <APPNAME>`
-

## Notes

Disable turbo for a link:

```html
<a ... data-turbo="false">Link</a>
```

If you do analytics on page views, filter for prefetched pages, that are did by turbo link prefetching.

> If you need to detect, server side, that a request was made via a Turbo prefetch, you can look for the 'X-Sec-Purpose: prefetch' header in the request.

> We can ask for confirmation by adding the 'data-turbo-confirm="<confirmation message>"' attribute to a button or form that would trigger the deletion of a resource.

Style the confirm dialog in `application.js`

```js:application.js
Turbo.config.forms.confirm = (message, _element, _button) => {
  let content = `
    <dialog id="confirm">
      <article>
        <h2>${message}</h2>
        <footer>
          <form method="dialog">
            <button value="cancel" class="secondary">Cancel</button>
            <button value="confirm">Confirm</button>
          </form>
        </footer>
      </article>
    </dialog>
  `

  document.body.insertAdjacentHTML("beforeend", content)
  let dialog = document.querySelector("#confirm")
  dialog.showModal()

  return new Promise((resolve, _reject) => {
    dialog.addEventListener("close", () => {
      resolve(dialog.returnValue == "confirm")
      dialog.remove()
    })
  })
}
```

Disable button while submit running:

```js:application.js
Turbo.forms.submitter = "aria-disabled"
```
