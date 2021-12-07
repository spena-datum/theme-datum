<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>
	<meta content="initial-scale=1.0, width=device-width" name="viewport"/>
	<link  rel="icon" href="${ruta}/icons/favicon1.ico"/>
	<link rel="apple-touch-icon" sizes="180x180" href="${ruta}/icons/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="${ruta}/icons/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="${ruta}/icons/favicon-16x16.png">
	<link rel="manifest" href="${ruta}/icons/site.webmanifest">
	<link rel="mask-icon" href="${ruta}/icons/safari-pinned-tab.svg" color="#5bbad5">
	<meta name="msapplication-TileColor" content="#a20630">
	<meta name="msapplication-config" content="${ruta}/icons/browserconfig.xml">
	<meta name="theme-color" content="#ffffff">
	
 

	<!–– inicio ––>
	<@liferay_util["include"] page=top_head_include />
	<!–– fin ––>
</head>

	<body class="container-fluid p-0" >

			<@liferay_util["include"] page=body_top_include />

				<@liferay.control_menu />

		<#if !is_signed_in>
			<header id="banner" role="banner" class="fixed-top" style="display: none;">
				<a id="IconoMenu" data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" rel="nofollow">
					<img src="${ruta}/img_datum/Header/ic_acceso_intranet.png" alt="ic_acceso_intranet"  width="32px" >
				</a>
			</header>
		<#else>
			<header id="banner" role="banner" class="fixed-top" style="display: none;">
				<a id="IconoMenu" data-redirect="${is_login_redirect_required?string}" href="${sign_out_url}" rel="nofollow">
					<img src="${ruta}/img_datum/Header/ic_acceso_intranet.png" alt="ic_acceso_intranet"  width="32px" > 
				</a>
			</header>
			
		</#if>

		<#--  realizando la invacioón del menú de navegación  -->
		<#if has_navigation && is_setup_complete && show_header>
			<#include "${full_templates_path}/navigation.ftl" />
			<#if !is_signed_in>
				<main role="main" class="container-fluid contenedor-sin-sesion" style="padding-right: 0px; padding-left: 0px;">
			<#else>
				<main role="main" class="container-fluid contenedor-con-sesion" style="padding-right: 0px; padding-left: 0px;">
			</#if>
		<#else>
			<main role="main" class="container-fluid" style="padding-right: 0px; padding-left: 0px;">
		</#if>

			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
			<!--
				<footer id="footer" role="contentinfo">
					<p class="powered-by">
						<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay site</a>
					</p>
				</footer>
			-->
			<#if show_footer>
				<footer>
					<section class="datos-banner">
						<div class="mt-1 pt-1 pb-2 mx-1 mx-md-5">
							<div class="container-footer">
								<div class="mt-1 py-2 d-flex justify-content-center">
								
									
										<#assign footerPreferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
									
										<@liferay.navigation_menu default_preferences="${footerPreferences}" instance_id="footer"/>
		
							
								</div>
							</div>
		
							<div class="row border-top mx-1">
								<div class=" col-fluid-lg-8 pt-4 ml-3 ml-md-1">
									<img src="https://i.ibb.co/b52Nzm2/logo-datum-redsoft-white.png" style="max-width: 250px;">
								</div>
							</div>
		
		
							<div class="row my-3 pl-4 pl-md-2">
								<div class="col-3 col-md-1  bd-highlight ">
									<p> Síguenos</p>
								</div>
								<div class="col-9 col-md-7">
									<a class="mr-1" href="# "><img src="https://i.ibb.co/9Y3PM7M/ic-linkedin.png" style="max-width: 25px ; " alt=" "></a>
									<a class="mr-1" href="# "><img src="https://i.ibb.co/bvFvZf3/ic-facebook.png" style="max-width: 25px ; " alt=" "></a>
									<a class="mr-1" href="# "><img src="https://i.ibb.co/74DkQXw/ic-instagram.png" style="max-width: 25px ; " alt=" "></a>
									<a class="mr-1" href="# "><img src="https://i.ibb.co/D5jfLcQ/ic-twitter.png" style="max-width: 25px ; " alt=" "></a>
									<a class="mr-1" href="# "><img src="https://i.ibb.co/KmKW1Db/ic-spotify.png" style="max-width: 25px ; " alt=" "></a>
								</div>
							
								<div class=" col-12 col-md-6 col-lg-4 bd-highlight d-flex justify-content-start justify-content-lg-end">
									<p class=" text-left text-md-right">Copyright 2021. Datum Redsoft.</p>
								</div>
							</div>
						</div>
					</section>
				</footer>
			</#if>
		</main>
		<@liferay_util["include"] page=body_bottom_include />

		<@liferay_util["include"] page=bottom_include />

	</body>

</html>