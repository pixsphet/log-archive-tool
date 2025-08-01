# log-archive-tool
https://roadmap.sh/projects/log-archive-tool

Log Archive Tool

This is a simple shell script for automatically archiving `.log` files:
- Compresses `.log` files older than 1 day into `.gz`
- Moves them to `archive/`
- Deletes archived logs older than 30 days
- Can be scheduled via cron on macOS
