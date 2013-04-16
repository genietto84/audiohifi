{*
* 2007-2012 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2012 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7 lt-ie6 " lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8 ie7" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9 ie8" lang="en"> <![endif]-->
<!--[if gt IE 8]> <html lang="fr" class="no-js ie9" lang="en"> <![endif]-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$lang_iso}">
	<head>
		<title>{$meta_title|escape:'htmlall':'UTF-8'}</title>
{if isset($meta_description) AND $meta_description}
		<meta name="description" content="{$meta_description|escape:html:'UTF-8'}" />
{/if}
{if isset($meta_keywords) AND $meta_keywords}
		<meta name="keywords" content="{$meta_keywords|escape:html:'UTF-8'}" />
{/if}
		<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />
		<meta http-equiv="content-language" content="{$meta_language}" />
		<meta name="generator" content="PrestaShop" />
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
		<link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />
		<script type="text/javascript">
			var baseDir = '{$content_dir}';
			var baseUri = '{$base_uri}';
			var static_token = '{$static_token}';
			var token = '{$token}';
			var priceDisplayPrecision = {$priceDisplayPrecision*$currency->decimals};
			var priceDisplayMethod = {$priceDisplay};
			var roundMode = {$roundMode};
		</script>
{if isset($css_files)}
	{foreach from=$css_files key=css_uri item=media}
	<link href="{$css_uri}" rel="stylesheet" type="text/css" media="{$media}" />
	{/foreach}
{/if}
{if isset($js_files)}
	{foreach from=$js_files item=js_uri}
	<script type="text/javascript" src="{$js_uri}"></script>
	{/foreach}
{/if}
	<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
		{$HOOK_HEADER}
	<script>
		jQuery(document).ready(function($){

		    $('body').removeClass('no-js');

		    $('#megamenu > li').hover(
		        function()
		        {
		            $('.wrapMegamenu', this).stop(true, true).fadeIn(300);    
		        },

		        function()
		        {
		            $('.wrapMegamenu', this).fadeOut(300);    
		        }
		    );  

		});
	</script>
	</head>
	
	<body {if isset($page_name)}id="{$page_name|escape:'htmlall':'UTF-8'}"{/if} class="{if $hide_left_column}hide-left-column{/if} {if $hide_right_column}hide-right-column{/if} {if $content_only} content_only {/if}">
	{if !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
		<div id="restricted-country">
			<p>{l s='You cannot place a new order from your country.'} <span class="bold">{$geolocation_country}</span></p>
		</div>
		{/if}
		<div id="page" class="container_5 clearfix">

			<!-- Header -->
			<div id="header" class="grid_5 alpha omega">
				<a id="header_logo" href="{$base_dir}" title="{$shop_name|escape:'htmlall':'UTF-8'}">
					<img class="logo" src="{$img_dir}/logo.png" alt="{$shop_name|escape:'htmlall':'UTF-8'}" />
				</a>
				<div id="megamenu">
				    <ul id="megamenu"> 
				        <li class="parent">
				            <a href="#" title="Prodotti" class="parent">Prodotti</a>

				            <!-- MEGAMENU -->
				            <div class="wrapMegamenu">
				                <ul class="sub-menu contenitore">
				                    <li>
				                        <!-- link principale sottomenu -->
				                        <a href="{$base_dir}19-docking-station" title="Docking Station">Docking Station</a>
				                        <!-- sottomenu colonna -->
				                        <ul class="sub-menu">
				                            <li><a href="{$base_dir}44-klipsch">Klipsch</a></li>
											<li><a href="{$base_dir}45-vita-audio">Vita Audio</a></li>
											<li><a href="{$base_dir}46-bowers-wilkins">Bowers &amp; Wilkins</a></li>
											<li><a href="{$base_dir}96-denon">Denon</a></li>
											<li><a href="{$base_dir}129-onkyo">Onkyo</a></li>
											<li><a href="{$base_dir}130-pro-ject">Pro-Ject</a></li>
											<li><a href="{$base_dir}250-monitor-audio">Monitor-Audio</a></li>
											<li><a href="{$base_dir}260-sonoro">Sonoro</a></li>
				                        </ul>
				                    </li>
				                    <li>
				                        <!-- link principale sottomenu -->
				                        <a href="{$base_dir}20-cuffie-auricolari" title="Cuffie &amp; Auricolari">Cuffie &amp; Auricolari</a>      
				                        <!-- sottomenu colonna -->
				                        <ul class="sub-menu">
											<li><a href="{$base_dir}39-bowers-wilkins">Bowers &amp; Wilkins</a></li>
											<li><a href="{$base_dir}40-denon">Denon</a></li>
											<li><a href="{$base_dir}41-ultrasone">Ultrasone</a></li>
											<li><a href="{$base_dir}42-monster-beats">Monster Cable</a></li>
											<li><a href="{$base_dir}43-klipsch">Klipsch</a></li>
											<li><a href="{$base_dir}191-sennheiser">Sennheiser</a></li>
											<li><a href="{$base_dir}258-focal">Focal</a></li>
											<li><a href="{$base_dir}259-thinksound">Thinksound</a></li>
											<li><a href="{$base_dir}262-hedkandi">HedKandi</a></li>
											<li><a href="{$base_dir}263-ministry-of-sound">Ministry of Sound</a></li>
				                        </ul>
				                    </li>
				                    <li>
				                        <!-- link principale sottomenu -->
				                        <a href="{$base_dir}53-subwoofer" title="Subwoofer">Subwoofer</a>
				    					<ul class="sub-menu">
											<li><a href="{$base_dir}54-bowers-wilkins">Bowers &amp; Wilkins</a></li><li><a href="{$base_dir}115-dali">Dali</a></li>
											<li><a href="{$base_dir}150-focal">Focal</a></li>
											<li><a href="{$base_dir}154-rel-acoustic">Rel Acoustic</a></li>
											<li><a href="{$base_dir}155-waterfall">Waterfall</a></li>
											<li><a href="{$base_dir}176-can">Canton</a></li>
											<li><a href="{$base_dir}183-sunfire">Sunfire</a></li>
											<li><a href="{$base_dir}188-wharfedale">Wharfedale</a></li>
											<li><a href="{$base_dir}193-chario">Chario</a></li>
											<li><a href="{$base_dir}224-tannoy">Tannoy</a></li>
											<li><a href="{$base_dir}240-velodyne">Velodyne</a></li>
											<li><a href="{$base_dir}243-subwoofer-monitor-audio">Subwoofer Monitor Audio</a></li>
											<li><a href="{$base_dir}268-triangle">Triangle</a></li>
										</ul>
				                    </li>
				                    <li class="last">
				                        <a href="{$base_dir}52-giradischi-e-accessori" title="Giradischi e Accessori">Giradischi e Accessori</a>
				    					<ul class="sub-menu">
											<li><a href="{$base_dir}100-giradischi" class="sf-with-ul">Giradischi</a>
												<ul>
													<li><a href="{$base_dir}101-pro-ject">Pro-Ject</a></li>
													<li><a href="{$base_dir}269-thorens">Thorens</a></li>
												</ul>
											</li>
											<li><a href="{$base_dir}197-bracci-giradischi" class="sf-with-ul">Bracci</a>
												<ul>
													<li><a href="{$base_dir}198-pro-ject">Pro-Ject</a></li>
													<li><a href="{$base_dir}270-thorens">Thorens</a></li>
												</ul>
											</li>
										</ul>
				                    </li>
				                </ul>    
				            </div>   
				            <!-- FINE MEGAMENU -->
				        </li>    
				        <li class="parent">
				            <a href="#" title="Produttori" class="parent">Produttori</a>

				            <!-- MEGAMENU -->
				            <div class="wrapMegamenu">
				                <ul class="sub-menu contenitore">

				                    <li>
				                        <!-- link principale sottomenu -->
				                        <a href="#" title="Laptop &amp; Notebook">Laptop &amp; Notebook</a> 
				                        <!-- descrizione colonna -->
				                        <p class="descrizione">Etiam non ultrices ipsum. Maecenas id ligula nec elit dignissim tristique. </p>         
				                        <!-- sottomenu colonna -->
				                        <ul class="sub-menu">
				                            <li><a href="#" title="Apple">Apple</a></li>
				                            <li><a href="#" title="Samsung">Samsung</a></li>
				                            <li><a href="#" title="Toshiba">Toshiba</a></li>
				                        </ul>
				                    </li>

				                    <li>
				                        <!-- link principale sottomenu -->
				                        <a href="#" title="Apple Computers">Apple Computers</a> 
				                        <!-- descrizione colonna -->
				                        <p class="descrizione">Etiam non ultrices ipsum. Maecenas id ligula nec elit dignissim tristique. </p>         
				                        <!-- sottomenu colonna -->
				                        <ul class="sub-menu">
				                            <li><a href="#" title="Mac Book">Mac Book</a></li>
				                            <li><a href="#" title="LCD TV">LCD V</a></li>
				                            <li><a href="#" title="Others">Others</a></li>
				                        </ul>
				                    </li>

				                    <li>
				                        <!-- link principale sottomenu -->
				                        <a href="#" title="Iphones &amp; Mobile">Iphones &amp; Mobile</a> 
				                        <!-- descrizione colonna -->
				                        <p class="descrizione">Etiam non ultrices ipsum. Maecenas id ligula nec elit dignissim tristique. Aliquam erat volutpat. Nunc vehicula scelerisque dui, sit amet luctus elit vehicula non. </p>    
				                    </li>

				                    <li class="last">
				                        <!-- link principale sottomenu -->
				                        <a href="#" title="Supporto gratuito">Supporto gratuito</a> 
				                        <!-- descrizione colonna -->
				                        <p class="descrizione">Etiam non ultrices ipsum. Maecenas id ligula nec elit dignissim tristique. Aliquam erat volutpat. </p>   
				                        <p class="descrizione">Fusce non <a href="#">sodales purus</a>. Lorem ipsum dolor sit amet.</p> 
				                    </li>

				                </ul>    
				            </div>   
				            <!-- FINE MEGAMENU -->
				        </li>
				        <li class="parent">
				            <a href="#" title="Servizi" class="parent">Servizi</a>

				            <!-- MEGAMENU -->
				            <div class="wrapMegamenu">
				                <ul class="sub-menu contenitore">

				                    <li>
				                        <!-- link principale sottomenu -->
				                        <a href="#" title="Laptop &amp; Notebook">Laptop &amp; Notebook</a> 
				                        <!-- descrizione colonna -->
				                        <p class="descrizione">Etiam non ultrices ipsum. Maecenas id ligula nec elit dignissim tristique. </p>         
				                        <!-- sottomenu colonna -->
				                        <ul class="sub-menu">
				                            <li><a href="#" title="Apple">Apple</a></li>
				                            <li><a href="#" title="Samsung">Samsung</a></li>
				                            <li><a href="#" title="Toshiba">Toshiba</a></li>
				                        </ul>
				                    </li>

				                    <li>
				                        <!-- link principale sottomenu -->
				                        <a href="#" title="Apple Computers">Apple Computers</a> 
				                        <!-- descrizione colonna -->
				                        <p class="descrizione">Etiam non ultrices ipsum. Maecenas id ligula nec elit dignissim tristique. </p>         
				                        <!-- sottomenu colonna -->
				                        <ul class="sub-menu">
				                            <li><a href="#" title="Mac Book">Mac Book</a></li>
				                            <li><a href="#" title="LCD TV">LCD V</a></li>
				                            <li><a href="#" title="Others">Others</a></li>
				                        </ul>
				                    </li>

				                    <li>
				                        <!-- link principale sottomenu -->
				                        <a href="#" title="Iphones &amp; Mobile">Iphones &amp; Mobile</a> 
				                        <!-- descrizione colonna -->
				                        <p class="descrizione">Etiam non ultrices ipsum. Maecenas id ligula nec elit dignissim tristique. Aliquam erat volutpat. Nunc vehicula scelerisque dui, sit amet luctus elit vehicula non. </p>    
				                    </li>

				                    <li class="last">
				                        <!-- link principale sottomenu -->
				                        <a href="#" title="Supporto gratuito">Supporto gratuito</a> 
				                        <!-- descrizione colonna -->
				                        <p class="descrizione">Etiam non ultrices ipsum. Maecenas id ligula nec elit dignissim tristique. Aliquam erat volutpat. </p>   
				                        <p class="descrizione">Fusce non <a href="#">sodales purus</a>. Lorem ipsum dolor sit amet.</p> 
				                    </li>

				                </ul>    
				            </div>   
				            <!-- FINE MEGAMENU -->
				        </li>

				    </ul>      

				</div>
				<div id="header_right">
					{$HOOK_TOP}
				</div>
			</div>
			{if $page_name == 'index'} 
			<div id="home_lider" class="grid_5 alpha omega">
				{$HOOK_TOP_SLIDER}
			</div>
			<div id="home_banner">
				<img src="{$img_dir}tmp/banner1.png" />
				<img src="{$img_dir}tmp/banner2.png" />
				<img src="{$img_dir}tmp/banner3.png" />
				<img src="{$img_dir}tmp/banner4.png" />
			</div>
			{/if}
			<div class="page_shadow grid_5 alpha omega clearfix"></div>
			<div id="columns" class="grid_5 alpha omega clearfix">
				<!-- Left -->
				<div id="left_column" class="column grid_1 alpha">
					{$HOOK_LEFT_COLUMN}
				</div>

				<!-- Center -->
				<div id="center_column" class="grid_4 omega">
	{/if}
