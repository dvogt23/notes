## Search engine

- [perplexity.ai](https://www.perplexity.ai/)

## Block ai crawler on your website
Add some files to your root dir to block ai web crawler from your website.

Add `robots.txt` with this content:
```
User-agent: AdsBot-Google
Disallow: /

User-agent: Amazonbot
Disallow: /

User-agent: anthropic-ai
Disallow: /

User-agent: Applebot
Disallow: /

User-agent: AwarioRssBot
Disallow: /

User-agent: AwarioSmartBot
Disallow: /

User-agent: Bytespider
Disallow: /

User-agent: CCBot
Disallow: /

User-agent: ChatGPT-User
Disallow: /

User-agent: ClaudeBot
Disallow: /

User-agent: Claude-Web
Disallow: /

User-agent: cohere-ai
Disallow: /

User-agent: DataForSeoBot
Disallow: /

User-agent: Diffbot
Disallow: /

User-agent: FacebookBot
Disallow: /

User-agent: FriendlyCrawler
Disallow: /

User-agent: Google-Extended
Disallow: /

User-agent: GoogleOther

Disallow: /

User-agent: GPTBot
Disallow: /

User-agent: img2dataset
Disallow: /

User-agent: ImagesiftBot
Disallow: /

User-agent: magpie-crawler
Disallow: /

User-agent: Meltwater
Disallow: /

User-agent: omgili
Disallow: /

User-agent: omgilibot
Disallow: /

User-agent: peer39_crawler
Disallow: /

User-agent: peer39_crawler/1.0
Disallow: /

User-agent: PerplexityBot
Disallow: /

User-agent: PiplBot
Disallow: /

User-agent: scoop.it
Disallow: /

User-agent: Seekr
Disallow: /

User-agent: YouBot
Disallow: /
```

Add `.htaccess` with this content:
```
Order Allow,Deny

# Anthropic Claude - https://docs.anthropic.com/en/api/ip-addresses
Deny from 160.79.104.0/23
Deny from 2607:6bc0::/48

# OpenAI ChatGPT - https://platform.openai.com/docs/plugins/bot/ip-egress-ranges
Deny from 23.98.142.176/28
Deny from 40.84.180.224/28
Deny from 13.65.240.240/28
Deny from 20.161.75.208/28
Deny from 52.225.75.208/28
Deny from 52.156.77.144/28
Deny from 40.84.180.64/28
  
Allow from all
```
Source: [anreiter.at](https://anreiter.at/ki-bots-auf-eigener-website-blockieren/)
## Prompts

- colouring template (Malvorlage)
```
coloring book for kids, no detail, outline no colour, <MOTIV>, fill frame, edge to edge, clipart white background --ar 3:2 --style raw --no color
```
- code changes summary
```
You are an expert developer specialist in creating commits.
	Provide a super concise one sentence overall changes summary of the user \`git diff\` output following strictly the next rules:
	- Do not use any code snippets, imports, file routes or bullets points.
	- Do not mention the route of file that has been change.
	- Simply describe the MAIN GOAL of the changes.
	- Output directly the summary in plain text.
```
- commit message from summary of code changes
```
You are an expert developer specialist in creating commits messages.
	Your only goal is to retrieve a single commit message. 
	Based on the provided user changes, combine them in ONE SINGLE commit message retrieving the global idea, following strictly the next rules:
	- Always use the next format: \`{type}: {commit_message}\` where \`{type}\` is one of \`feat\`, \`fix\`, \`docs\`, \`style\`, \`refactor\`, \`test\`, \`chore\`, \`revert\`.
	- Output directly only one commit message in plain text.
	- Be as concise as possible. 50 characters max.
	- Do not add any issues numeration nor explain your output.
```