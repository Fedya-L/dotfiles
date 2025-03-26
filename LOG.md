# 2025-03-26

Could not sleep, so decided to have another go at `flake.nix` update. Completely removing `opt/homebrew` did the trick.

Or did it. At this point, I'm reinstalling `nix` using [nix-installer](https://github.com/DeterminateSystems/nix-installer?tab=readme-ov-file#installation) recommended by [nix-darwin](https://github.com/LnL7/nix-darwin?tab=readme-ov-file).

Well, seems that every step is making it worse. Maybe I should do `brew bundle` after all.

Yeah, `brew bundle` is more on my level. Also, using `defaults` for configuring the system is an option. Not sure, why I did not consider it before.


# 2025-03-22

I returned to this configuration after a long time forgetting to commit the changes. Tried commiting and running an update. Things broke. 

While running `make nixb` I got hit with `Error: Unknown command: brew bundle`. 

Tried updating flakes,but got hit with API rate limit from GitHub.

Reinstalled homebrew. Solved the first problem, but still getting API rale limited. 

Used phone network instead, managed to more forward. But, homebrew is now an issue again.

Looking into redoing `flake.nix`. Probably better left for another day.

