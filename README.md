# Windows Dotfiles

Claude Code configuration files for Windows environment.

## Structure

```
.claude/
├── CLAUDE.md              # Main configuration (v3.0)
├── SKILLS.md              # Skills reference (~79 skills)
├── PERMISSIONS.md         # Permission rules
├── SLASH_COMMANDS.md      # Slash commands (28)
├── VALIDATION_PROTOCOL.md # Multi-source validation
├── WORKFLOW_CHECKLIST.md  # Work approval checklist
├── config.toml            # MCP servers config
├── settings.local.json    # Local settings
├── mcp-restore.sh         # MCP restore script
├── agents/                # Custom agents (31)
├── commands/              # Custom commands
├── hooks/                 # Pre/Post action hooks
├── scripts/               # Utility scripts
├── skills/                # Custom skills
└── mcp-servers/           # Custom MCP servers

.mcp.json                  # MCP servers configuration
```

## Features

- **ABSOLUTE RULES**: Work approval, parallel processing, multi-source validation
- **MCP Integration**: 17 direct + 174 Gateway servers
- **AI CLI**: Cloud 4 + Ollama Cloud/Local models
- **Agents**: 31 specialized agents
- **Skills**: ~79 skills with auto-activation

## Setup

1. Clone this repository
2. Copy files to your home directory:
   ```bash
   cp -r .claude ~/.claude
   cp .mcp.json ~/.mcp.json
   ```
3. Update API keys in `.mcp.json`
4. Restart Claude Code

## Note

⚠️ API keys and tokens are masked. Replace `YOUR_*_HERE` placeholders with actual values.

---

**Version**: 3.0 | **Updated**: 2025-12-31
