### `cb_dvo_osUpdate`

#### Overview
This Chef Cookbook, named `cb_dvo_osUpdate`, is designed to manage operating system updates across different environments. It provides a simple, yet effective way to automate the update process for both Linux and Windows systems.

#### Recipes
The cookbook includes three main recipes:

1. **default.rb**: This is the default recipe that acts as the entry point for the cookbook. It determines the operating system of the target node and includes the relevant recipe for that OS.

2. **linux.rb**: This recipe is tailored for Linux systems. It performs the following tasks:
   - Sets up a monthly cron job for system updates.
   - Creates and manages a script (`yumUpdate.bash`) for executing `yum` updates.
   - Excludes specific packages (e.g., `WALinuxAgent`) from the update as needed.
   - Ensures that the updates are executed as the `root` user.

3. **windows.rb**: Currently, this recipe is a placeholder. It is intended for managing updates on Windows systems, but it does not contain any implementation as of now.

#### Requirements
- Chef Client 12.0 or later.
- Linux or Windows nodes managed by Chef.

#### Usage
To use this cookbook, add it to your Chef Server and include the `cb_dvo_osUpdate` cookbook in your run list. The default recipe will automatically include the appropriate recipe based on the operating system of the node.

#### License
Copyright (c) 2017 Example, All Rights Reserved.

---

**Note**: This README is a basic template and should be expanded with more details specific to your environment and requirements. You might want to add sections on attributes, dependencies, and any specific usage instructions or configurations required for your setup.