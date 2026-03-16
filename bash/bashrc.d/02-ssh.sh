AGENT_ENV="$HOME/.ssh/agent.env"

# Load existing agent if available
if [ -f "$AGENT_ENV" ]; then
  . "$AGENT_ENV" >/dev/null
fi

# Check if agent is still alive
if ! ssh-add -l >/dev/null 2>&1; then
  eval "$(ssh-agent -s)" >/dev/null
  echo "export SSH_AUTH_SOCK=$SSH_AUTH_SOCK" >"$AGENT_ENV"
  echo "export SSH_AGENT_PID=$SSH_AGENT_PID" >>"$AGENT_ENV"
  chmod 600 "$AGENT_ENV"

  # Load your keys once (note: keys are just examples, adjust paths as needed)
  ssh-add -q \
    "$HOME/.ssh/keys/github.personal.key" \
    "$HOME/.ssh/keys/github.work.key"
fi
