# Basic

### Books
- [Structure and Interpretation of Computer Programs](https://web.mit.edu/6.001/6.037/sicp.pdf)
- [Is Parallel Programming Hard, And, If So, What Can You Do About It?](https://mirrors.edge.kernel.org/pub/linux/kernel/people/paulmck/perfbook/perfbook.html)
- [Interactive Linear Algebra](https://services.math.duke.edu/~jdr/ila/index.html)
## Atomic design

A programming pattern that divides components into different chemical stages to
allow reusability as much as possible. Mostly useful for frontend design.

 - Atoms
 - Molecules
 - Organisms
 - ...

Source: [Brad Frost](https://bradfrost.com/blog/post/atomic-web-design/)

## Coding style

At the linux kernel guideline are some good advices: [The linux kernel - coding style](https://www.kernel.org/doc/html/v4.10/process/coding-style.html#linux-kernel-coding-style)
Google have some [guidelines](https://google.github.io/styleguide/) for some languages as well. Use positive booleans for better readability, like described [here | Google Code health](https://testing.googleblog.com/search/label/Code%20Health)
## Principles

- [YAGNI](https://en.m.wikipedia.org/wiki/You_aren%27t_gonna_need_it)
	- stop thinking about future possible mutation of your actual requirements, just let it simple
## Code review

- Be kind! People are more receptive to feedback if you assume competence and treat them with respect. 

- Focus your comments on the code, [not the author](https://google.github.io/eng-practices/review/reviewer/comments.html#courtesy). Avoid statements with the word ‘you’ which can give the impression that you are judging the person and not the artifact.

- Explain why you are making the comment. You may be aware of alternatives that are not obvious to the author, or they may be aware of additional constraints.

- [Express the tradeoffs](https://google.github.io/eng-practices/review/reviewer/comments.html#guidance) your suggestion entails and take a pragmatic approach to working with the author to achieve the right balance.

- Approach your role as a guide, not a test grader. Balance giving direct guidance with leaving some degrees of freedom for the author.

- Consider [marking low priority comments with severity](https://google.github.io/eng-practices/review/reviewer/comments.html#label-comment-severity) like _Nit_, _Optional_, or _FYI_ to help the author prioritize the important ones.

Source: [Google testing blog](https://testing.googleblog.com/2023/08/testing-on-toilet-presents.html)

Review concerns:
- Force you to think about scalability, not just functionality.
- Push you to write code that’s maintainable, not just clever.
- Teach you to plan for edge cases and failures, because they **_will_** happen.
Source: [manager-i-hated](https://www.blog4ems.com/p/the-manager-i-hated)