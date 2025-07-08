# Hydrangea-SchemaSpy
A docker image using SchemaSpy to visualize datasets.

Build

```bash
docker build -t hydrangea-schemaspy .
```

Run

```bash
docker run --rm -v .:/app hydrangea-schemaspy
```

Remember to edit the `main.sh` script to connect the database successfully.

The output files are in `./dist` folder.
