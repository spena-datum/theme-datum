 <div class="container-inner">
  <nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-between menu-altura " >
      <a class="navbar-brand" href="/">
        <img class="datum-logo" src="http://www.datumredsoft.com/image/layout_set_logo?img_id=34520&t=1615938295455" style="max-width: 250px;">
      </a>
      <button class="navbar-toggler mt-2 collapse" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
	    <#assign defaultPreferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
	    <@liferay.navigation_menu default_preferences="${defaultPreferences}" instance_id="default"/>
      </div>
  </nav>
</div>
 
