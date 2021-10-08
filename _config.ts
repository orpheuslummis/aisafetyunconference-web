import lume from "https:/deno.land/x/lume@v1.1.0/mod.ts";

const site = lume();
site
    .copy("banner.jpg")
    .copy("index.css")
    .copy("2018")
    .copy("2019")

export default site;
