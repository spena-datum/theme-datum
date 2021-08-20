<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<script>
        $(document).ready(function() {
            $('[data-toggle="tooltip"]').tooltip({
				placement: 'bottom',
                boundary: "windows",
                template: '<div class="tooltip tooltip-prime" role="tooltip"><div class="arrow"></div><div class="tooltip-inner"></div></div>'
            });
        });
    </script>

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="container-fluid" id="wrapper">
	<header id="banner" role="banner">

		<#if !is_signed_in>
			<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
		</#if>

		<#if has_navigation && is_setup_complete && show_header>
			<#include "${full_templates_path}/navigation.ftl" />
		</#if>
	</header>

	<section id="content">
		<h1 class="hide-accessible">${the_title}</h1>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>



    <#if show_footer>
		<footer>
			<section class="datos-banner">
				<div class="mt-1 pt-1 pb-2">
				<div class="container">
					<div class="mt-1 py-2 ">
	                        <div id="footer.listado" class="row my-3">
	                            <div class="col d-none d-md-block my-3">
	                            
	                                <#assign footerPreferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
	                            
	                                <@liferay.navigation_menu default_preferences="${footerPreferences}" instance_id="footer"/>
	                            </div>
	                        </div>
	                    </div>
	
						<div class="row border-top ">
	                        <div class=" col-fluid-lg-8 pt-4  ">
	                            <img src="https://i.ibb.co/b52Nzm2/logo-datum-redsoft-white.png" style="max-width: 250px;">
	                        </div>
	                    </div>
	
	
	                    <div class="row my-3">
	                        <div class="d-flex bd-highlight mb-3">
	
	                            <div class="col-fluid bd-highlight ">
	                                <small class="text-white-55 "> <strong>Síguenos</strong></small>
	
	                                <a class="ml-4 mr-2" href="# "><img src="https://i.ibb.co/9Y3PM7M/ic-linkedin.png" style="max-width: 25px ; " alt=" "></a>
	                                <a class="mr-2" href="# "><img src="https://i.ibb.co/bvFvZf3/ic-facebook.png" style="max-width: 25px ; " alt=" "></a>
	                                <a class="mr-2" href="# "><img src="https://i.ibb.co/74DkQXw/ic-instagram.png" style="max-width: 25px ; " alt=" "></a>
	                                <a class="mr-2" href="# "><img src="https://i.ibb.co/D5jfLcQ/ic-twitter.png" style="max-width: 25px ; " alt=" "></a>
	                                <a class="mr-2" href="# "><img src="https://i.ibb.co/KmKW1Db/ic-spotify.png" style="max-width: 25px ; " alt=" "></a>
	
	                            </div>
	                        </div>
	                        <div class=" ml-auto bd-highlight">
	                            <p><small class="text-white-55 py-4">Copyright 2021. Datum Redsoft.</small></p>
	                        </div>
	                    </div>
				</div>
				</div>
			</section>
		</footer>
	</#if>

</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>