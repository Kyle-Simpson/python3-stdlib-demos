# python3-stdlib-demos

## Ideas for modules

https://docs.python.org/3.7/library/index.html

- `os`
    - environmental variables
        - os.environ
        - os.getenv
    - process information
        - os.getpid
        - os.getuid
        - os.cpu_count
    - permissions
        - os.umask
        - os.chmod
        - os.chown

- `pathlib`
    - booleans
        - path.is_dir
        - path.is_file
        - path.is_symlink
        - path.exists
    - path types
        - absolute
        - relative
        - path.resolve
    - path.glob
    - path.chmod
    - path.chown
    - path.rename
    - path.name
    - path.parent
    - path.suffix
    - how `pathlib` is / isn't different from `os.path`

- `dataclasses`
    - example of location metadata
        - name, id, parent, children

- `typing`
    - Dict, List, Tuple, Set, Optional

- `re` (regular expressions)
    - re.search
    - re.match

- `datetime`
    - datetime.date
    - datetime.datetime

- `itertools`
    - itertools.chain

- `functools`
    - functools.partial

- `tempfile`
    - tempfile.mkstemp
    - tempfile.mkdtemp

- `shutil`
    - shutil.which
    - shutil.rmtree

- `argparse`

- `logging`

- `subprocess`

- `unittest`

- `pdb`

- `sys`
