# Academic Website Maintenance Guide

This folder contains the source for the academic website and the generated `docs/` output used for GitHub Pages.

## Main Files to Edit

- `index.qmd`: home page
- `projects.qmd`: research page
- `publications.qmd`: publications page
- `teaching.qmd`: teaching and supervision page
- `talks.qmd`: talks, service, and awards
- `_quarto.yml`: site title, navigation, theme, and output settings
- `styles.css`: custom styling
- `CV.pdf`: the PDF served on the website

## Website CV Source

The online CV is built from a separate source file outside this folder:

- `../UiB_Associate_Intelligence_2026/CV_UiB_Associate_Intelligence_2026/CV_general_2026.tex`

This is separate from the application-specific CV source so website edits do not affect job-application materials.

## Normal Update Workflow

1. Edit the Quarto page you want to change.
2. If needed, edit the online CV source:
   `../UiB_Associate_Intelligence_2026/CV_UiB_Associate_Intelligence_2026/CV_general_2026.tex`
3. From inside `quarto_site`, run:

```bash
./rebuild_site.sh
```

This will:

- compile the online CV with `tectonic`
- copy the updated PDF to `quarto_site/CV.pdf`
- run `quarto render`

## Quick 3-Command Routine

After you edit the content, the normal update routine is:

```bash
cd "/Users/asimof2024/Library/CloudStorage/OneDrive-UniversityofBergen/Behavioral Data Science Application/quarto_site"
./rebuild_site.sh
git add . && git commit -m "Update website" && git push
```

If there is nothing new to commit, Git will just tell you and no push is needed.

## Publish to GitHub Pages

After rebuilding, commit and push the contents of this project. Because `_quarto.yml` outputs the site to `docs/`, GitHub Pages can publish from the `docs` folder on the main branch.

## Notes

- Edit the source `.qmd` files, not the generated files inside `docs/`.
- If you only change text on website pages, `./rebuild_site.sh` is still safe to use.
- If `tectonic` or `quarto` is missing on a new machine, install them first.
