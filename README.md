# 9366_Team01_Erlang_Project-SourceCode

This repository is where the main development happens. All source codes, configuration files and documentation files are stored in this repository.

 The various features of GitHub, such as codespaces, pull request, branch rules, issues and actions enabled the execution of code review, issue tracking and CI/CD for this Erlang project.

 Every contributor in this repository is advised to create there own working branch where they can commit their changes by doing the following steps:
    1. Go to the `<> Code` tab of the repository.
    2. Click on the `Branches` to view all branches available in the repository.
    3. Click on the `New Branch` button, input the branch name and confirm to create a new working branch.

 In the contributor's working branch, it is recommended to set up their own Erlang codespace to seamlessly work on this project directly through github.

    To configure the erlang codespace in Github, do the following steps:
        1. Go to the personal working branch.
        2. Click on `<> Code` button under the `<> Code` tab and choose to create a codespace.
        3. After redirecting to the codespace, go to the codespace terminal and input the following:
            -> `sudo apt-get update` [ensures that all packages are up to date]
            -> `sudo apt-get install -y erlang` [installs the Erlang OTP in the codespace allowing the execution of Erlang files via erl]
            -> sudo --build_plt --apps erts kernel stdlib mnesia [enables Erlang's dialyzer for static code review]

 The main branch is binded by the 'Require a pull request before merging - Require approvals' rule, wherein the  main branch only accepts merging after a pull request has been created and approved by the collaborators. Therefore, for every pushed changes to by a contributor to his working branch, there is a need to create a pull request and the approval of another contributor before the main branch will be updated with the changes from the contributor.

 Issues identified from the project files are issued and assigned to corresponding contributors. Through Github, the status of the issue is traced and tracked.

Under the .github/workflows directory, the cipipeline.ym is located which automates the static code review (dialyzer) and dynamic code review (test cases). Upon the creation of a pull request, this workflow is triggered displaying several issues observed in the source code files which is logged under the Actions tab.