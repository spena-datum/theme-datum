<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
<!--
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	-->

    <!-- Liferay already includes Boostrap 4
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
	
    <!--
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	-->

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

<!--
	<script>
        $(document).ready(function() {
            $('[data-toggle="tooltip"]').tooltip({
                placement: 'bottom',
                trigger: 'hover'
            });
        });
    </script>
-->
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
	
		<#--  <div id="heading">
			<h1 class="site-title">
			<!--
				<a class="navbar-brand" href="${site_default_url}"  title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
					<img alt="${logo_description}" height="${site_logo_height}" style="max-width: 350px; height:50px;" src="${site_logo}" width="${site_logo_width}" />
				</a>
				
				<#if show_site_name>
					<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
						${site_name}
					</span>
				</#if>
				
			</h1>
		</div>  -->
		

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
				<div class="mt-1 pt-1 pb-2">
				<div class="container">
					<div class="mt-1 py-2 ">
	                        <div id="footer.listado" class="row my-3">
	                            <div class="col d-none d-md-block my-3">
	                            
	                                <#assign footerPreferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
	                            
	                                <@liferay.navigation_menu default_preferences="${footerPreferences}" instance_id="footer"/>
	
									<#--
	                                <div class="d-flex justify-content-between ">
	
	                                    <div class=" mx-auto">
	                                        <h5 href="# ">Soluciones</h5>
	                                    </div>
	                                    <div class="mx-auto">
	                                        <h5 href="# ">Compañia</h5>
	                                    </div>
	                                    <div class="mx-auto">
	                                        <h5 href="# ">RSE</h5>
	                                    </div>
	                                    <div class="mx-auto">
	                                        <h5 href="# ">Únete a nuestro equipo</h5>
	                                    </div>
	                                    <div class="mx-auto">
	                                        <h5 href="# ">Partners</h5>
	                                    </div>
	                                </div>
	                                -->
	                                
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
	
	
					<!-- 
					<div class="row d-flex">
					<div class="mt-5 col-lg-8 col-xs-12">
					<a href=""><img src="https://i.ibb.co/b52Nzm2/logo-datum-redsoft-white.png" style="max-width: 250px;"></a>
						
						<div class="col-auto mt-3">
						<p class="">
							<span class="me-3"><strong>Síguenos</strong></span>
							
							<a href=""><img src="https://i.ibb.co/9Y3PM7M/ic-linkedin.png" style="max-width: 30px ;" alt=""></a>
							<a href=""><img src="https://i.ibb.co/bvFvZf3/ic-facebook.png" style="max-width: 30px ;"></a>
							<a href=""><img src="https://i.ibb.co/74DkQXw/ic-instagram.png" style="max-width: 30px ;"></a>
							<a href=""><img src="https://i.ibb.co/D5jfLcQ/ic-twitter.png" style="max-width: 30px ;"></a>
							<a href=""><img src="https://i.ibb.co/KmKW1Db/ic-spotify.png" style="max-width: 30px ;"></a>
						-->
						<!--
						<a href="#"><img src="img/footer/ic-linkedin.png" ></a>
						<a href="#"><img src="img/footer/ic-facebook.png" style="max-width: 30px ;" alt=""></a>
						<a href="#"><img src="img/footer/ic-instagram.png" style="max-width: 30px ;" alt=""></a>
						<a href="#"><img src="img/footer/ic-twitter.png" style="max-width: 30px ;" alt=""></a>
						<a href="#"><img src="img/footer/ic-spotify.png" style="max-width: 30px ;" alt=""></a>
						
						</p>
						</div>
					</div>              
					<div class="col-lg-4 col-xs-12">           
						<div class="row mt-5">
						<div class="col copyright">
							<p class=""><small class="text-white-50">Copyright 2021.Datum Redsoft.</small></p>
						</div>
						</div>
					</div>              
					</div>
					-->
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