<!--<nav class="${nav_css_class}" id="navigation" role="navigation">
	<h1 class="hide-accessible"><@liferay.language key="navigation" /></h1>

	<ul aria-label="<@liferay.language key="site-pages" />" role="menubar">
		<#list nav_items as nav_item>
			<#assign
				nav_item_attr_has_popup = ""
				nav_item_css_class = ""
				nav_item_layout = nav_item.getLayout()
			/>

			<#if nav_item.isSelected()>
				<#assign
					nav_item_attr_has_popup = "aria-haspopup='true'"
					nav_item_css_class = "selected"
				/>
			</#if>

			<li class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
				<a aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem"><span><@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}</span></a>

				<#if nav_item.hasChildren()>
					<ul class="child-menu" role="menu">
						<#list nav_item.getChildren() as nav_child>
							<#assign
								nav_child_css_class = ""
							/>

							<#if nav_item.isSelected()>
								<#assign
									nav_child_css_class = "selected"
								/>
							</#if>

							<li class="${nav_child_css_class}" id="layout_${nav_child.getLayoutId()}" role="presentation">
								<a aria-labelledby="layout_${nav_child.getLayoutId()}" href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">${nav_child.getName()}</a>
							</li>
						</#list>
					</ul>
				</#if>
			</li>
		</#list>
	</ul>
</nav>
-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="/">
        <img class="datum-logo" src="http://www.datumredsoft.com/image/layout_set_logo?img_id=34520&t=1615938295455" style="max-width: 250px;">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
      
	    <#assign defaultPreferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
	    <@liferay.navigation_menu default_preferences="${defaultPreferences}" instance_id="default"/>
            
      	<#--
        <ul class="navbar-nav">
		  <#if nav_items??>
									<#list nav_items as nav_item>
										<#assign nav_item_attr_has_popup="" />
										<#assign nav_item_attr_selected="" />
										<#assign nav_item_css_class = "" />
										<#if  nav_item.isSelected()>
											<#assign nav_item_attr_selected="aria-selected='true'" />
											<#assign nav_item_css_class = "active" />
										</#if>
										<#if ! nav_item.hasChildren()>
										<li class="nav-item" id="layout_${nav_item.getLayoutId()}" ${nav_item_attr_selected} role="presentation">
            <a class="nav-link active" aria-expanded="false" role="button" aria-labelledby="layout_${nav_item.getLayoutId()}" href="${nav_item.getURL()}" ${nav_item_attr_has_popup} ${nav_item.getTarget()}>${nav_item.getName()}</a>
          </li>
					
										<#else>
										<li class="nav-item" id="layout_${nav_item.getLayoutId()}" ${nav_item_attr_selected} role="presentation">
            <a class="nav-link active" aria-labelledby="layout_${nav_item.getLayoutId()}" ${nav_item_attr_has_popup} ${nav_item.getTarget()} aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown">Soluciones</a>
          </li>
					
										</#if>		
									</#list>
								</#if>
          <li class="nav-item-button">
            <a class="button-contact button-color" href="#">Contáctanos</a>
          </li>
		  
		  
        </ul>
  	    -->
  	    
      </div>
    </div>
  </nav>
