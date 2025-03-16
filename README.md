# youngstownactioncenter-site

If you have any questions, please reach out to Andrew / @Raymi306 or Mitch / @iintangible

## How to Contribute

- Create an account on GitHub. Please use a secure password and strongly consider enabling 2FA in your settings.
  - You may access your settings by clicking on the circular button in the top right of GitHub after you have logged in, and selecting "Settings"
- Message Andrew or Mitch with your GitHub username, so that we can add you as a collabarator to the project.
- Click on the button in top right, click on organizations, and accept the invitation.
- [Download GitHub Desktop](https://desktop.github.com/)
- Sign in to GitHub Desktop, and provide a valid email address
- Clone the youngstownactioncenter-site repository
  - Cloning a repository means downloading it so that you have your own local copy to work on

After completing these steps, you will have a local copy of the files that you can begin to make changes to.
To write content, we will be using Markdown.

Familiarize yourself with Markdown with [this tutorial](https://www.markdowntutorial.com/) or [this cheatsheet](https://www.markdownguide.org/cheat-sheet/).

## Build and View Website Locally

This project uses [Zola](https://www.getzola.org/) to generate the website.
In order to get Zola, you may either build it from scratch or download the latest release.

You may find the latest release [here](https://github.com/getzola/zola/releases).
Once you have downloaded the release for your operating system, extract the contents of the archive.

If you feel the desire to build from scratch, you have some additional steps.
First, you need Rust. Follow [these instructions](https://www.rust-lang.org/learn/get-started).
Then, you need to clone the Zola repository which can be found [here](https://github.com/getzola/zola).
Navigate to the top level directory of the zola repository and run `cargo build --release`.
Grab a drink, this will take a few minutes.

Once you have acquired Zola, for ease of use, you need to add the executable's location to your Path.

This can be done on Windows as follows:

`Windows -> Settings -> About -> Advanced -> Environment Variables`:

- Edit "Path"
- Add the directory that your Zola executable resides in OR the full path to the executable.

If you built Zola from scratch, it is in the project directory/target/release.
Otherwise, it is wherever you extracted the archive to.

Now, when you type `zola` from your terminal, it will run.
Quick refresher on terminals on Windows 11:
You may hit the Window's key and type "terminal" to access the new Windows terminal.
You may alternatively use powershell or cmd (terminal will by default be a pretty wrapper around powershell).
You may right click in your website's project directory and click open terminal to open a terminal which is at the correct path to begin running Zola.
Otherwise, familiarize yourself with the concept of directories and paths, and use the "cd" command to change to the website project's directory before running zola commands.

Go to the youngstownactioncenter-site directory and try `zola serve`.
It will build the site and you can access it locally in your browser.
When you make any changes to a file and save it, it will rebuild the webpage for you to immediately view it.

## Project layout:

```
└───youngstownactioncenter-site
    │
    ├───content
    │   │   contact.md
    │   │   _index.md
    │   │
    │   └───newsletter
    │       │   2.md
    │       │   _index.md
    │       │
    │       └───1
    │               index.md
    │               image.png
    │
    ├───static
    │
    └───templates
```

## Editing:

We will be focusing on the content directory to add new information to the different pages.
If you wish to edit the contact page, open "contact.md" in a text editor of your choice.
Do NOT use Word or similar, Notepad works in a pinch.
Edit the Markdown below the plus signs.
Please see above for links to Markdown resources, or refer to existing files.


One common task is adding a new newsletter.
If the newsletter needs no pictures, create a new file ending in .md in the newsletter directory.
We have been numbering these files, so a good choice is to use the next number, 3.md in this example.
If you need pictures, create a new directory (folder) instead.
Inside the directory you need an index.md and your image files in .png format.
Now, open your markdown file. It is a good idea to also open an existing markdown file of similar type (index or normal) for reference and for copy-pasting.
Each file must start as follows:

```
+++
title = ""
date = yyyy-mm-dd
+++
```

Please put your title in between the quotation marks, and fill in the date with the shown format.
Once you have filled out this data, you may enter Markdown content below the bottom 3 plus signs.

## Advanced

You will need basic HTML knowledge and the willingness to read the Zola (and possibly Tera) docs to go further.
Feel free to play with the templates and stylesheet, as long as you do not commit the changes and push them, there is no harm in tinkering.
