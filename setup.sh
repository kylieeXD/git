mkdir -p ~/.gnupg
cat >> ~/.gnupg/gpg-agent.conf << 'EOF'
default-cache-ttl 34560000
max-cache-ttl 34560000
EOF
gpgconf --kill gpg-agent
echo 'export GPG_TTY=$(tty)' >> ~/.bashrc
source ~/.bashrc
