
# Software Index — by scale

Every tool AIBHS courses touch, grouped by where it runs, with University of Florida's own resource pages where one
exists. UF-specific links are marked **(UF)**; where UF doesn't publish its own guide, the vendor's docs are used
instead and marked **(vendor)**.

## Level 1 — Personal computer (local install)

| Software | Role | Resource |
|---|---|---|
| Python (via Anaconda) | Course language | **(vendor)** [Download](https://www.anaconda.com/download) · [Install & getting started guide](https://www.anaconda.com/docs/getting-started/anaconda/install) — UF doesn't host its own Anaconda mirror for personal laptops |
| VS Code | Primary editor | **(vendor)** [code.visualstudio.com](https://code.visualstudio.com/) · [Python in VS Code](https://code.visualstudio.com/docs/python/python-tutorial) |
| Git (CLI) | Version control | **(vendor)** [git-scm.com/downloads](https://git-scm.com/downloads) — install · [Git Guides: Get Started](https://github.com/git-guides) — UF Research Computing's old Git doc link has since moved; no current UF-specific guide |
| pandas / NumPy / matplotlib / scikit-learn | Data wrangling, viz, modeling | **(vendor)** [pandas: 10 minutes to pandas](https://pandas.pydata.org/docs/user_guide/10min.html) — no UF-specific guide; installed via conda, see Level 4 |

## Level 2 — Browser / cloud (personal account, no UF login)

| Software | Role | Resource |
|---|---|---|
| GitHub / GitHub Desktop | Hosts course repos; version control UI | **(vendor)** [Download GitHub Desktop](https://desktop.github.com) · [docs.github.com: GitHub flow](https://docs.github.com/en/get-started/using-github/github-flow) · [Collaborating with pull requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests) |
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
