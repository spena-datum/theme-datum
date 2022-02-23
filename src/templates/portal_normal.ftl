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

	<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://www.facebook.com/DATUMREDSOFT/">
<meta property="og:title" content="DATUM REDSOFT Facebook">
<meta property="og:description" content="Empresa de servicios de tecnología y Transformación digital, líder en consultorías, servicios, soporte 24/7, renovaciones, licencias y suscripciones en tecnología de la información en la región centroamericana.">
<meta property="og:image" content="">

<!-- Open Graph / Instagram -->		
<meta property="og:type" content="website">
<meta property="og:url" content="https://www.instagram.com/datumredsoft/?hl=en">
<meta property="og:title" content="DATUM REDSOFT Instagram">
<meta property="og:description" content="Empresa de servicios de tecnología y Transformación digital, líder en consultorías, servicios, soporte 24/7, renovaciones, licencias y suscripciones en tecnología de la información en la región centroamericana.">
<meta property="og:image" content="">

<!-- Open Graph / Linkedin -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://www.linkedin.com/company/datum-redsoft">
<meta property="og:title" content="DATUM REDSOFT Linkedin">
<meta property="og:description" content="Empresa de servicios de tecnología y Transformación digital, líder en consultorías, servicios, soporte 24/7, renovaciones, licencias y suscripciones en tecnología de la información en la región centroamericana.">

<!-- Twitter -->
<meta property="twitter:url" content="https://twitter.com/datumredsoft">
<meta property="twitter:title" content="DATUM REDSOFT Twitter">
<meta property="twitter:description" content="Empresa de servicios de tecnología y Transformación digital, líder en consultorías, servicios, soporte 24/7, renovaciones, licencias y suscripciones en tecnología de la información en la región centroamericana.">


<!-- Open Graph / Spotify -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://open.spotify.com/show/00kreL0cll69zK6cGAm8rE">
<meta property="og:title" content="DATUM REDSOFT Spotify">
<meta property="og:description" content="Empresa de servicios de tecnología y Transformación digital, líder en consultorías, servicios, soporte 24/7, renovaciones, licencias y suscripciones en tecnología de la información en la región centroamericana.">

	<!–– inicio ––>
	<@liferay_util["include"] page=top_head_include />
	<!–– fin ––>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-YF8MXB16KS"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-YF8MXB16KS');
</script>

<!-- Meta Pixel Code -->
<script>
!function(f,b,e,v,n,t,s)
	{if(f.fbq)return;n=f.fbq=function(){n.callMethod?n.callMethod.apply(n,arguments):n.queue.push(arguments)};
	if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
	n.queue=[];t=b.createElement(e);t.async=!0;
	t.src=v;s=b.getElementsByTagName(e)[0];
	s.parentNode.insertBefore(t,s)}(window, document,'script','https://connect.facebook.net/en_US/fbevents.js');
	fbq('init', '692321628792807');
	fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=692321628792807&ev=PageView&noscript=1"/>
</noscript>
<!-- End Meta Pixel Code -->

<!-- Bing site tag -->
<meta name="msvalidate.01" content="872DA871014D7FFB8A91948D1030FC95" />

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
		
		
		
							   <div class=" border-top mx-3 ">
                    <div class=" col-fluid-lg-8 pt-4 ">
                        <img class="logofooter" src="https://i.ibb.co/b52Nzm2/logo-datum-redsoft-white.png"  alt="redsoft">
                    </div>
                    <div class="row my-3 ">
                        <div class="col-12 col-md-6  d-flex justify-content-start  bd-highlight ">
                            <p class="mr-4"> Síguenos</p>
                            <a class="mr-1 " href="https://www.linkedin.com/company/datum-redsoft" target="_blank"><img class="redsocialtamanio" src="https://i.ibb.co/9Y3PM7M/ic-linkedin.png"  alt=" Linkedin"></a>
                            <a class="mr-1 " href="https://www.facebook.com/DATUMREDSOFT/ " target="_blank"><img class="redsocialtamanio" src="https://i.ibb.co/bvFvZf3/ic-facebook.png"  alt="Facebook"></a>
                            <a class="mr-1 " href="https://www.instagram.com/datumredsoft/?hl=es-la" target="_blank"><img class="redsocialtamanio" src="https://i.ibb.co/74DkQXw/ic-instagram.png"  alt="Instagram"></a>
                            <a class="mr-1 " href="https://mobile.twitter.com/datumredsoft" target="_blank"><img class="redsocialtamanio" src="https://i.ibb.co/D5jfLcQ/ic-twitter.png"  alt="Twitter"></a>
                            <a class="mr-1 " href="https://open.spotify.com/show/00kreL0cll69zK6cGAm8rE" target="_blank"><img class="redsocialtamanio" src="https://i.ibb.co/KmKW1Db/ic-spotify.png" alt="Spotify"></a>
                        </div>

                        <div class=" col-12 col-md-6 bd-highlight d-flex justify-content-start   justify-content-md-end">
                            <p class=" text-left text-md-right" style="min-width: 215px;">Copyright 2022. Datum Redsoft.</p>
                        </div>
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