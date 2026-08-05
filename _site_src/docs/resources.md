<div class="marimo-book-buttons" data-placement="header">
<a class="marimo-book-button marimo-book-button-github" href="https://github.com/UF-AIBHS/UF-AIBHS.github.io/blob/main/content/resources.md" target="_blank" rel="noopener" aria-label="View the source on GitHub" title="View the source on GitHub"><svg class="marimo-book-button-icon" viewBox="0 0 24 24" aria-hidden="true" focusable="false"><path d="M12 .3a12 12 0 0 0-3.79 23.4c.6.11.82-.26.82-.58v-2.05c-3.34.72-4.04-1.61-4.04-1.61-.55-1.39-1.34-1.76-1.34-1.76-1.08-.74.08-.73.08-.73 1.2.09 1.83 1.24 1.83 1.24 1.07 1.84 2.81 1.31 3.5 1 .11-.78.42-1.31.76-1.61-2.67-.3-5.47-1.33-5.47-5.93 0-1.31.46-2.38 1.24-3.22-.13-.31-.54-1.53.11-3.18 0 0 1.01-.32 3.31 1.23a11.5 11.5 0 0 1 6 0c2.31-1.55 3.31-1.23 3.31-1.23.66 1.65.25 2.87.13 3.18.77.84 1.24 1.91 1.24 3.22 0 4.61-2.81 5.62-5.49 5.92.42.36.81 1.1.81 2.22v3.29c0 .32.21.69.83.58A12 12 0 0 0 12 .3"/></svg><span class="marimo-book-button-label">View on GitHub</span></a>
</div>

# Software Index — by scale

Every tool AIBHS courses touch, grouped by where it runs, with University of Florida's own resource pages where one
exists. UF-specific links are marked **(UF)**; where UF doesn't publish its own guide, the vendor's docs are used
instead and marked **(vendor)**.

## Level 1 — Personal computer (local install)

| Software | Role | Resource |
|---|---|---|
| Python (via Anaconda) | Course language | **(vendor)** [anaconda.com](https://www.anaconda.com/download) — UF doesn't host its own Anaconda mirror for personal laptops |
| VS Code | Primary editor | **(vendor)** [code.visualstudio.com](https://code.visualstudio.com/) · [Python in VS Code](https://code.visualstudio.com/docs/python/python-tutorial) |
| Git (CLI) | Version control | **(UF)** [UF Research Computing: Git](https://help.rc.ufl.edu/doc/Git) |
| pandas / NumPy / matplotlib / scikit-learn | Data wrangling, viz, modeling | **(vendor)** [pandas: 10 minutes to pandas](https://pandas.pydata.org/docs/user_guide/10min.html) — no UF-specific guide; installed via conda, see Level 4 |

## Level 2 — Browser / cloud (personal account, no UF login)

| Software | Role | Resource |
|---|---|---|
| GitHub / GitHub Desktop | Hosts course repos; version control UI | **(vendor)** [docs.github.com: GitHub flow](https://docs.github.com/en/get-started/using-github/github-flow) · [Collaborating with pull requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests) |
| molab (marimo.io) | Runs Lecture/Assignment notebooks in-browser, no install | **(vendor)** [docs.marimo.io](https://docs.marimo.io/getting_started/) |

## Level 3 — UF institutional systems (GatorLink login required)

| Software | Role | Resource |
|---|---|---|
| Canvas / e-Learning | Grades, submissions, announcements, official course home | **(UF)** [elearning.ufl.edu student help](https://elearning.ufl.edu/student-help/keep-learning/quickstart-guide-for-students/) · [Student Help FAQs](https://elearning.ufl.edu/student-help/student-help-faqs/) |
| EdStream | In-Canvas messaging | **(vendor)** [edstream.io](https://edstream.io/) |
| Kaizen / Gradescope | Where assignments are actually submitted (embedded in Canvas) | **(UF)** accessed through the specific Canvas assignment page — no standalone UF doc |
| UF Zoom | Office hours, optional live-stream of lecture | **(UF)** [ufl.zoom.us](https://ufl.zoom.us/) — sign in via SSO, company domain `ufl` |
| GatorEvals | End-of-term course evaluations | **(UF)** [gatorevals.aa.ufl.edu](https://gatorevals.aa.ufl.edu/students/) |
| GatorLink | The UF identity behind all of the above | **(UF)** [UF GatorLink ID](https://education.ufl.edu/technology/uf-gatorlink-id/) |

## Level 4 — UF Research Computing / HPC scale

| Software | Role | Resource |
|---|---|---|
| HiPerGator | UF's HPC cluster | **(UF)** [docs.rc.ufl.edu](https://docs.rc.ufl.edu/) · [Introduction to RC](https://docs.rc.ufl.edu/quickstart/) · [HiPerGator Training](https://docs.rc.ufl.edu/training/HiPerGator_training/) |
| Open OnDemand | Web interface to launch HiPerGator jobs/Jupyter | **(UF)** [docs.rc.ufl.edu/interfaces/ood](https://docs.rc.ufl.edu/interfaces/ood/) — `ondemand.rc.ufl.edu` |
| Jupyter on HiPerGator | Notebook execution on the cluster | **(UF)** [docs.rc.ufl.edu/interfaces/jupyter](https://docs.rc.ufl.edu/interfaces/jupyter/) |
| Conda environments (on HiPerGator) | Reproducible package management on the cluster | **(UF)** [Conda background](https://docs.rc.ufl.edu/software/conda_environments/) · [Environment creation](https://docs.rc.ufl.edu/software/conda_creation/) · [Installing packages](https://docs.rc.ufl.edu/software/conda_installing_packages/) · [Creating Jupyter kernels](https://docs.rc.ufl.edu/software/conda_jupyter/) |
| VS Code Remote Tunnels | Editing HiPerGator files from local VS Code | **(UF)** [docs.rc.ufl.edu/domain/vscode_development](https://docs.rc.ufl.edu/domain/vscode_development/) |

## Cross-cutting — UF-wide IT support

| Resource | What it's for |
|---|---|
| **(UF)** [UF Computing Help Desk](https://helpdesk.ufl.edu/) | 352-392-4357 / helpdesk@ufl.edu — first call for anything above that breaks |
| **(UF)** [UF Help Desk support portal](https://support.helpdesk.ufl.edu/) | Ticket submission |
| **(UF)** [software.ufl.edu](https://www.it.ufl.edu/services/103) via [UF VPN](https://vpn.ufl.edu) | Discounted/licensed UF software (SAS, SPSS, Office 365, etc.) |
| **(UF)** [UFApps](https://portal.apps.ufl.edu) | Virtual desktop access to UF-licensed software |

## Notes

- Access requirements scale by level: Level 1 and Level 2 are open-source tools, packages, and software — no restrictions, anyone can use them. Level 3 and Level 4 are university-specific, gated behind Canvas/GatorLink or HiPerGator credentials.
- A personal laptop (Level 1) and molab (Level 2) are enough for most weekly work; HiPerGator (Level 4) is offered as an alternative, not a requirement.
- Everything in Level 3 requires being enrolled in the actual Canvas course — none of it is reachable from outside UF's authentication.
