[#assign styleAttribute = "style='background-color: #666666;'"]
 
[#if content.image?has_content]
  [#assign image = damfn.getAsset(content.image)!]
   
  [#if image?has_content]
    [#assign imageLink = image.link!]
 
      [#if imageLink?has_content]
        [#assign styleAttribute = "style='background-image: url(${imageLink});'"]
      [/#if]
  [/#if]
[/#if]


<div class="intro-header" ${styleAttribute}>
	<div class="container">
	  <div class="row">
		<div class="col-lg-12">
		  <div class="intro-message">
			<div class="bg-gradient-opacity-centered">
			  [#if content.title?has_content]
			  	<h2>${cmsfn.decode(content).title}</h2>
			  [/#if] [#if content.html?has_content]
			 	<h5>${cmsfn.decode(content).html}</h5>
			  [/#if]
			</div>
  
			<hr class="intro-divider" />
		  </div>
		</div>
	  </div>
	</div>
</div>
  