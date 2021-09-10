<#assign
	show_footer = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-footer"))
	show_header = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-header"))
	show_header_search = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-header-search"))
	show_breadcrumbs = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-breadcrumbs"))
	header_template = getterUtil.getString(themeDisplay.getThemeSetting("header-template"))
	wrap_widget_page_content = getterUtil.getBoolean(themeDisplay.getThemeSetting("wrap-widget-page-content"))
/>

<#assign ruta = themeDisplay.getPathThemeImages() />
<#assign getPortalURL = themeDisplay.getPortalURL() />
