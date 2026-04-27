---
id: ai
aliases: []
tags: []
---

## Interesting

- [Chatbots Are Cheating on Their Benchmark Tests](https://www.theatlantic.com/technology/archive/2025/03/chatbots-benchmark-tests/681929/)
- [MicroGPT explained](https://growingswe.com/blog/microgpt)
- [Karpathy-Skills](https://github.com/forrestchang/andrej-karpathy-skills)
- [Personal AI Agent - frona](https://github.com/fronalabs/frona)
- [Paperclip - AI company](https://github.com/paperclipai/paperclip)
- [Skills - dot-skills](https://github.com/pproenca/dot-skills)

## Chat bots

- [phind.com](https://www.phind.com)
- [abbey](https://abbey.us.ai/) - summarize anything

## Claude

- Audit session: `claude logs --last-session
- Security settings:
	- **Always place** deny rules first, then specific allow rules. This principle follows the "deny by default" logic used in network firewalls.
	- Documentation: [claude#settings](https://code.claude.com/docs/en/settings)
		```json:~/.claude/settings.json
	     "security": {
		    "prompt_injection_protection": true,
		    "max_file_read_size_mb": 10
		  },
		  "permissions": {
		    "deny": [
		      "Read(./.env)",
		      "Read(./.env.local)",
		      "Read(./.env.development)",
		      "Read(./.env.production)",
		      "Read(./.env.staging)",
		      "Read(./.envrc)",
		      "Read(./.secrets)",
		      "Read(./.secret)",
		      "Read(./.vault)",
		      "Read(./**/.env)",
		      "Read(./**/.env.local)",
		      "Read(./**/.env.development)",
		      "Read(./**/.env.production)",
		      "Read(./**/.env.staging)",
		      "Read(./**/.envrc)",
		      "Read(./**/secrets/**)",
		      "Read(./**/credentials.json)",
		      "Read(./**/.credentials/**)",
		      "Write(./.env)",
		      "Write(./.env.local)",
		      "Write(./.env.development)",
		      "Write(./.env.production)",
		      "Write(./.env.staging)",
		      "Write(./.envrc)",
		      "Edit(./.env)",
		      "Edit(./.env.local)",
		      "Edit(./.env.development)",
		      "Edit(./.env.production)",
		      "Edit(./.env.staging)",
		      "Edit(./.envrc)",
		      "Bash(cat .env:*)",
		      "Bash(cat .envrc:*)",
		      "Bash(head .env:*)",
		      "Bash(tail .env:*)",
		      "Bash(less .env:*)",
		      "Bash(more .env:*)",
		      "Bash(git push --force:*)",
		      "Bash(git push -f:*)",
		      "Bash(git reset --hard:*)",
		      "Bash(git clean -f:*)",
		      "Bash(git checkout .:*)",
		      "Bash(rm -rf:*)",
		      "Bash(rm -r:*)",
		      "Bash(gcloud compute instances delete:*)",
		      "Bash(gcloud container clusters delete:*)",
		      "Bash(gcloud dataproc batches delete:*)",
		      "Bash(gcloud dataproc clusters delete:*)",
		      "Bash(gcloud dataproc jobs delete:*)",
		      "Bash(gcloud functions delete:*)",
		      "Bash(gcloud iam service-accounts delete:*)",
		      "Bash(gcloud projects delete:*)",
		      "Bash(gcloud pubsub subscriptions delete:*)",
		      "Bash(gcloud pubsub topics delete:*)",
		      "Bash(gcloud run services delete:*)",
		      "Bash(gcloud scheduler jobs delete:*)",
		      "Bash(gcloud secrets delete:*)",
		      "Bash(gcloud sql instances delete:*)",
		      "Bash(gcloud storage rm:*)",
		      "Bash(gcloud workflows delete:*)",
		      "Bash(terraform destroy:*)",
		      "Bash(bq rm:*)"
		    ],
		    "allow": [
		      "Read(./**)",
		      "Write(./**)",
		      "Edit(./**)",
		      "Read(~/.claude/**)",
		      "Read(~/.claude/skills/**)",
		      "Read(~/.claude/brands/**)"
		    ],
		    "defaultMode": "default"
		  }
		```
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

