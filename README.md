### stampsahoy
fancy little pipeline for quickly and consistently generating stamps for clay
Give it text and it models (openscad), slices (Slic3r) and prints (octopi)!
We print these with tpu and then press them in mugs and shit:
https://nightshiftstoneware.com/collections/drinkware/products/custom-drinkware


Just two backing layers in TPU makes the perfect amount of floppiness for random shapes


#### Install
Needs `openscad` and `Slic3r` on the path. 
Make a python3 venv and `pip install -r requirements.txt`


#### Usage
`./generate "print me"`
```
usage: generate [-h] [-d DEPTH] [-s SIZE] [-f FONT] [-u OCTOPRINT_URL]
                [-k OCTOPRINT_KEY]
                message [message ...]

Generate a text stamp.

positional arguments:
  message

optional arguments:
  -h, --help            show this help message and exit
  -d DEPTH, --depth DEPTH
                        Stamp Depth
  -s SIZE, --size SIZE  Font Size
  -f FONT, --font FONT  Font/Style
  -u OCTOPRINT_URL, --octoprint_url OCTOPRINT_URL
                        Url of Octoprint Server
  -k OCTOPRINT_KEY, --octoprint_key OCTOPRINT_KEY
                        Octoprint api key
```

#### Errata
Defaults are tuned for my use case, printing TPU on a Monoprice Maker Select v2. Adjust accordingly. Some things that should be arguments aren't. Deal with it it's like 8 lines.

