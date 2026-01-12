# Player Drops Head

**Players will drop their head when killed by another player.**

_The heads are **stackable** up to **64**_

## Give own head

To give yourself your own head:

```
/trigger give_own_head
```

## Give any head

To give yourself any head:

Get a book and quill and write only the name in it

While holding the book and quill run:

```
/trigger give_head
```

## Config

**To change if players are able to give themself their own head:**

```
/scoreboard players set &give_own_head config.player_drops_head value
```
value = 0 = disabled
value = 1 = enabled --> default

#

**To change if players are able to give themself any head:**
```
/scoreboard players set &give_head config.player_drops_head value
```
value = 0 = disabled --> default
value = 1 = enabled 

#

<picture>
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/Mqxx/GitHub-Markdown/main/blockquotes/badge/light-theme/info.svg">
   <img alt="Info" src="https://raw.githubusercontent.com/Mqxx/GitHub-Markdown/main/blockquotes/badge/dark-theme/info.svg">
</picture><br>
To fix the bug where the name of a head changes after being placed and picked up again:

You can istall -> [**Keep Head Names Mod**](https://modrinth.com/mod/keepheadnames)

This bug will be fixed in 1.20.5

---

## Datapack created by Jodek published on modrinth: https://modrinth.com/user/Jodek

<picture>
   <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/Mqxx/GitHub-Markdown/main/blockquotes/badge/light-theme/tip.svg">
  <img alt="Tip" src="https://raw.githubusercontent.com/Mqxx/GitHub-Markdown/main/blockquotes/badge/dark-theme/tip.svg">
 </picture><br>
 
Questions or issues? -> [discord server](https://discord.gg/z2n3qTzQY6) | _or create an issue on github_
