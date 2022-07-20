<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>${content.windowTitle!content.title!}</title>
    <meta name="description" content="${content.description!""}" /> <meta
    name="keywords" content="${content.keywords!""}" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
    />
    [#-- To load resources you can link them manually (e.g. line below) --] [#--
    <link
      rel="stylesheet"
      type="text/css"
      href="${ctx.contextPath}/.resources/onePageSite/webresources/css/bootstrap.css"
      media="all"
    />
    --] [#--
    <script src="${ctx.contextPath}/.resources/onePageSite/webresources/js/jquery.js"></script>
    --] [#-- or via theme --] [#-- [#assign site = sitefn.site()!] --] [#--
    [#assign theme = sitefn.theme(site)!] --] [#-- [#list theme.cssFiles as
    cssFile] --] [#-- [#if cssFile.conditionalComment?has_content]
    <!--[if ${cssFile.conditionalComment}
      ]>[/#if] --] [#--
      <link
        rel="stylesheet"
        type="text/css"
        href="${cssFile.link}"
        media="${cssFile.media}"
      />
      --] [#-- [#if cssFile.conditionalComment?has_content]<!
    [endif]-->
    [/#if] --] [#-- [/#list] --] [#-- [#list theme.jsFiles as jsFile] --] [#--
    <script src="${jsFile.link}"></script>
    --] [#-- [/#list] --] [#-- uncomment next line to use resfn templating
    functions to load all css which matches a globbing pattern --]
    ${resfn.css(["/onePageSite/.*css"])!}
  </head>
  <body>
  <#--  Navigation  -->
    <nav class="navbar-default navbar-fixed-top p-10">
      <div class="navContainer nav-bar ">
        <div class="homeLink"><a href="#">Top</a></div>
        <div>
          <ul class="nav-link">
            <li><a href="#about">About</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="#feedback">Feedback</a></li>
          </ul>
        </div>

      </div>
    </nav>
    
    <#--  the main is for the banner  -->
    <div>
      [@cms.area name="main" /]
    </div>

    <#-- The main content for the page  -->
    <div>
      <div>[@cms.area name="mainText" /]</div>
    </div>

    [#-- use resfn to load all js which matches the globbing pattern or link
    resources manually or via theme --] [#-- ${resfn.js(["/onePageSite/.*js"])!}
    --]
  </body>
</html>
