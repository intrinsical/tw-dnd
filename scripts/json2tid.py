import argparse
import json
import re
import unicodedata

def slugify(value, allow_unicode=False):
    """
    Taken from https://github.com/django/django/blob/master/django/utils/text.py
    Convert to ASCII if 'allow_unicode' is False. Convert spaces or repeated
    dashes to single dashes. Remove characters that aren't alphanumerics,
    underscores, or hyphens. Convert to lowercase. Also strip leading and
    trailing whitespace, dashes, and underscores.
    """
    value = str(value)
    if allow_unicode:
        value = unicodedata.normalize('NFKC', value)
    else:
        value = unicodedata.normalize('NFKD', value).encode('ascii', 'ignore').decode('ascii')
    value = re.sub(r'[^\w\s-]', '', value.lower())
    return re.sub(r'[-\s]+', '-', value).strip('-_')
    
def save(tiddler):
    filename = slugify(tiddler['title']) + ".tid"
    print('Generating', filename)
    file = open(filename, 'w')
    for key, value in tiddler.items():
        if key != 'text':
            print(key, ': ', value, sep='', file=file)
    print(file=file)
    print(tiddler['text'], file=file)
    file.close()

parser = argparse.ArgumentParser(description='Convert tiddlywiki .json to .tid files.')
parser.add_argument('json_file', type=str, help='.json file name')
args = parser.parse_args()

if args.json_file:
    file = open(args.json_file)
    tiddlers = json.load(file, strict=False)
    for tiddler in tiddlers:
        save(tiddler)
    file.close()
