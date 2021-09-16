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
	
 
	<script>
        $(document).ready(function() {
            $('[data-toggle="tooltip"]').tooltip({
				placement: 'bottom',
                boundary: "windows",
                template: '<div class="tooltip tooltip-prime" role="tooltip"><div class="arrow"></div><div class="tooltip-inner"></div></div>'
            });
        });
    </script> 
	<!–– inicio ––>
	<@liferay_util["include"] page=top_head_include />
	<!–– fin ––>
</head>

	<body class="container-fluid p-0" >

			<@liferay_util["include"] page=body_top_include />

				<@liferay.control_menu />
		<div class=""> 


			 <header id="banner" role="banner" class="fixed-top">
				<#if !is_signed_in>
					<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
				</#if>
			</header>
		</div>

		<#--  realizando la invacioón del menú de navegación  -->
		<#if has_navigation && is_setup_complete && show_header>
			<#include "${full_templates_path}/navigation.ftl" />
		</#if>
		<main role="main" class="container-fluid" style="padding-right: 0px; padding-left: 0px;">
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
						<div class="mt-1 pt-1 pb-2 mx-5">
							<div class="container">
								<div class="mt-1 py-2 d-flex justify-content-center">
									<div id="footer.listado" class="row my-2">
										<div class="col-lg-12 d-none d-md-block  my-2">
									
										<#assign footerPreferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
									
										<@liferay.navigation_menu default_preferences="${footerPreferences}" instance_id="footer"/>
		
									</div>
									</div>
								</div>
							</div>
		
							<div class="row border-top ">
								<div class=" col-fluid-lg-8 pt-4 ml-1 ">
									<img src="https://i.ibb.co/b52Nzm2/logo-datum-redsoft-white.png" style="max-width: 250px;">
								</div>
							</div>
		
		
							<div class="row my-3">
								<div class="col-3 col-md-1  bd-highlight ">
									<p> Síguenos</p>
								</div>
								<div class="col-9 col-md-7">
									<a class="mr-2" href="# "><img src="https://i.ibb.co/9Y3PM7M/ic-linkedin.png" style="max-width: 25px ; " alt=" "></a>
									<a class="mr-2" href="# "><img src="https://i.ibb.co/bvFvZf3/ic-facebook.png" style="max-width: 25px ; " alt=" "></a>
									<a class="mr-2" href="# "><img src="https://i.ibb.co/74DkQXw/ic-instagram.png" style="max-width: 25px ; " alt=" "></a>
									<a class="mr-2" href="# "><img src="https://i.ibb.co/D5jfLcQ/ic-twitter.png" style="max-width: 25px ; " alt=" "></a>
									<a class="mr-2" href="# "><img src="https://i.ibb.co/KmKW1Db/ic-spotify.png" style="max-width: 25px ; " alt=" "></a>
								</div>
							
								<div class=" col-12 col-md-6 col-lg-4 bd-highlight">
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