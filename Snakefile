# User config
configfile: "showyourwork.yml"
    

# Import the showyourwork module
module showyourwork:
    snakefile:
        "showyourwork/workflow/Snakefile"
    config:
        config


# Use all default rules
use rule * from showyourwork

use rule figure from showyourwork as mandelbrot with:
    input:
        "src/figures/mandelbrot.py",
        "environment.yml"
    output:
        "src/figures/mandelbrot.pdf"
