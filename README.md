# Meyer Lab Website

This repository contains the source files for the [Meyer Lab](https://asmlab.org/) website, built using the [Hugo](https://gohugo.io/) static site generator.

## Getting Started

### Prerequisites

To develop the site locally, you need to have [Hugo](https://gohugo.io/) installed on your machine.

### Local Development

1.  **Clone the repository**:
    ```bash
    git clone <repository-url>
    cd asmlab.org
    ```

2.  **Start the Hugo development server**:
    Run the following command to start a local server:
    ```bash
    hugo server
    ```
    Once the server is running, you can view your changes in real-time by navigating to `http://localhost:1313/` in your web browser.

## Repository Structure

The project follows the standard Hugo directory structure:

- `content/`: Contains all the Markdown files that make up the website's pages.
    - `content/news/`: News articles and updates.
    - `content/publications/`: Lists of research publications.
    - `content/research/`: Information about various research areas.
    - `content/team/`: Information about lab members.
    - `content/contact/`: Contact information and forms.
- `layouts/`: Contains the HTML templates used to render the content.
    - `layouts/_default/`: Default templates for pages and lists.
    - `layouts/partials/`: Reusable HTML snippets (e.g., headers, footers, navigation).
    - `layouts/shortcodes/`: Custom Hugo shortcodes for embedding complex elements in Markdown.
- `assets/`: Contains assets that Hugo processes, such as SCSS/SASS files for styling.
- `static/`: Contains raw assets that are copied directly to the final build directory without processing.
    - `static/public/photos/`: Headshots and other images.
    - `static/public/images/`: General site images and icons.
    - `static/research/`: Research-related graphics and diagrams.
- `hugo.yaml`: The main configuration file for the Hugo site, including site title, base URL, and taxonomies.

## Modifying Content

### Updating Text and Pages

Most of the website's content is written in Markdown and located in the `content/` directory.

- **To add a news item**: Create a new `.md` file in `content/news/`.
- **To update team members**: Edit the files in `content/team/` or update the corresponding entries in `content/team/index.md`.
- **To add research info**: Create or edit Markdown files in `content/research/`.

### Changing the Design and Layout

- **To edit global styles**: Modify the SCSS files in `assets/css/`.
- **To change page templates**: Edit the HTML files in `layouts/`.
- **To add/edit reusable components**: Modify the partials in `layouts/partials/`.
- **To add custom shortcodes**: Create new files in `layouts/shortcodes/`.

### Managing Images and Assets

- **To add new photos**: Place them in `static/public/photos/` and reference them in your Markdown content.
- **To add site-wide assets (like favicons)**: Place them in `static/`.

## Deployment

The website is automatically deployed via GitHub Actions. When you push changes to the `main` branch, a workflow is triggered that builds the static site and depls it to the hosting provider.
