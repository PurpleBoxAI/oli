# Packaged plugin

`local-growth-pack-<version>.plugin` is a zip of `20-implementation/claude/local-growth-pack/` with OS debris removed. Rebuild with:

    cd 20-implementation/claude/local-growth-pack && zip -r ~/local-growth-pack-0.1.0.plugin . -x "*.DS_Store" && cp ~/local-growth-pack-0.1.0.plugin ../../../dist/

Attach the file to a GitHub release once the verification checklist has passed on a test account.
