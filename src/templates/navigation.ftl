<nav class="navbar navbar-expand-lg navbar-light  bg-light navbar-fixed-custom" style="height: auto;" >
      <a class="navbar-brand" style="height: auto; margin-right: 0; padding-left: 0.5rem; padding-right: 0.5rem;" href="/">
        <img class="datum-logo d-inline-block align-top" src="http://www.datumredsoft.com/image/layout_set_logo?img_id=34520&t=1615938295455" style="max-width: 250px;" lt="logo de Datum">
      </a>
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
	    <#assign defaultPreferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
	    <@liferay.navigation_menu default_preferences="${defaultPreferences}" instance_id="default"/>
      </div>
      
</nav>
