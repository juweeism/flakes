{
    module.exports = function(eleventyConfig) {
        eleventyConfig.addPassthroughCopy("src/css");
        eleventyConfig.addPassthroughCopy("src/img");

        return {
            dir: {
                output: "_dist",
                input: "src"
            }
        }
    }
}
