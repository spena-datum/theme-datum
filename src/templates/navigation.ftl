<#if is_signed_in>
<nav id="nav-menu" class="navbar navbar-expand-xl navbar-light  bg-light navbar-fixed-custom scroll-y-custom"  style="top: 45px;" >	
<#else>
<nav id="nav-menu" class="navbar navbar-expand-xl navbar-light  bg-light navbar-fixed-custom scroll-y-custom"  >
</#if>
  <a class="navbar-brand" style="height: auto;margin-right: 0;min-width: 252px;padding-left: 0.5rem;padding-right: 0.5rem;" href="/">
    <img class="datum-logo d-inline-block align-top" src="https://ibb.co/YysPKJW" style="max-width: 250px;" lt="logo de Datum">
  </a>
  <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
  <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
  <#assign defaultPreferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
  <@liferay.navigation_menu default_preferences="${defaultPreferences}" instance_id="default"/>
  </div>
</nav>

<#if is_signed_in>
			<script>
				var miNavMenu =document.getElementById("nav-menu");
				miNavMenu.style.top = '45px';
			</script>
</#if>
