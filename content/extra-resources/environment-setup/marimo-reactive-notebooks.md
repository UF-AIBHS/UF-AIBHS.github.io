
# marimo: Reactive Python Notebooks

A reactive Python notebook — on VS Code, Jupyter, and HiPerGator.

## 1. What Is marimo?

[docs.marimo.io](https://docs.marimo.io)

- A reactive Python notebook — change a cell, and every cell that depends on it re-runs automatically
- Stored as a plain `.py` file — git-friendly, unlike `.ipynb` JSON
- The same notebook can run as a script, an app, or an editable notebook

## 2. Install & Launch marimo

Install into your environment:

```
pip install marimo
```

## 3. marimo in VS Code

[marketplace.visualstudio.com — marimo extension](https://marketplace.visualstudio.com/items?itemName=marimo-team.vscode-marimo)

- Install the marimo extension from the VS Code Marketplace
- `Cmd/Ctrl+Shift+P` → "marimo: New marimo notebook"
- Edits like a `.py` file, runs like a notebook — with a variables explorer and rich output

![marimo notebook running inside VS Code](../../images/extra-resources/environment-setup/marimo-vscode.png)

## 4. marimo with Jupyter Notebooks

Convert an existing Jupyter notebook to marimo:

```
marimo convert notebook.ipynb -o notebook.py
```

## 5. marimo on HiPerGator

Install it into your conda environment, then launch it headless inside your job:

```
conda activate ds-course
pip install marimo
marimo edit --headless --port=8890
```

## 6. Reaching It From Your Laptop

Same idea as a standalone Jupyter server on
[HiPerGator](hipergator-research-computing.md): open an SSH tunnel from your laptop to the compute node and
port.

```
ssh -NL 8890:<node-hostname>:8890 <username>@hpg.rc.ufl.edu
```
