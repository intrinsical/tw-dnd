import os
import re
import shutil

# Paths relative to the repo root (one level up from the scripts folder)
REPO_ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ICONS_DIR = os.path.join(REPO_ROOT, "icons")
OUTPUT_DIR = os.path.join(REPO_ROOT, "icons-white")

# Folders inside icons/ to skip entirely (e.g. non-SVG asset folders)
SKIP_FOLDERS = {"roll20"}


def clean_output_dir():
    """Remove the existing icons-white folder so we start fresh."""
    if os.path.exists(OUTPUT_DIR):
        shutil.rmtree(OUTPUT_DIR)
        print(f"Removed existing folder: {OUTPUT_DIR}")


def add_white_fill(svg_content):
    """Insert fill="#ffffff" into the opening <svg> tag."""
    return re.sub(r"(<svg\b)", r'\1 fill="#ffffff"', svg_content, count=1)


def generate_white_icons():
    """Walk the icons folder and write white versions to icons-white, skipping SKIP_FOLDERS."""
    for root, dirs, files in os.walk(ICONS_DIR):
        # Get the path of the current folder relative to the icons root
        relative_root = os.path.relpath(root, ICONS_DIR)

        # Skip any folder whose top-level name is in SKIP_FOLDERS
        # relative_root is e.g. "roll20" or "weapon" or "weapon/subdir"
        top_level_folder = relative_root.split(os.sep)[0]
        if top_level_folder in SKIP_FOLDERS:
            continue

        # Filter out SVG files only
        svg_files = [f for f in files if f.endswith(".svg")]
        if not svg_files:
            continue

        # Mirror the subfolder structure inside icons-white
        output_subdir = os.path.join(OUTPUT_DIR, relative_root)
        os.makedirs(output_subdir, exist_ok=True)

        for filename in svg_files:
            src_path = os.path.join(root, filename)
            dst_path = os.path.join(output_subdir, filename)

            with open(src_path, "r", encoding="utf-8") as f:
                content = f.read()

            white_content = add_white_fill(content)

            with open(dst_path, "w", encoding="utf-8") as f:
                f.write(white_content)

            print(f"Created: {os.path.relpath(dst_path, REPO_ROOT)}")


if __name__ == "__main__":
    clean_output_dir()
    generate_white_icons()
    print("\nDone.")
