{
    description = "juwee's flake templates";

    outputs = { self, ... }: {
        templates = {
            astro = {
                path = ./astro;
                description = "an astro dot js project template";
            };

            eleventy = {
                path = ./eleventy; 
                description = "an eleventy project template";
            };

            jupyter = {
                path = ./jupyter;
                description = "a python shell with jupyter notebook";
            };
        };
    };
}
