FROM hugomods/hugo:exts-0.127.0

WORKDIR /src

# Copy dependency files
COPY go.mod go.sum ./
RUN hugo mod download

# Copy the rest of the project
COPY . .

# Expose Hugo server port
EXPOSE 1313

# Default command
CMD ["hugo", "server", "--bind=0.0.0.0", "--disableFastRender"]
