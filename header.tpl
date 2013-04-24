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
	<script type="text/javascript" src="{$js_dir}/faq.js"></script>
	<script type="text/javascript" src="{$js_dir}/custom.js"></script>
	</head>
	
	<body {if isset($page_name)}id="{$page_name|escape:'htmlall':'UTF-8'}"{/if} class="{if $hide_left_column}hide-left-column{/if} {if $hide_right_column}hide-right-column{/if} {if $content_only} content_only {/if}">
	{if !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
		<div id="restricted-country">
			<p>{l s='You cannot place a new order from your country.'} <span class="bold">{$geolocation_country}</span></p>
		</div>
		{/if}
		<div id="page">
			<!-- Header -->
			<div id="header" class="alpha omega">
				<div class="header_inner container_5 clearfix">
					<a id="header_logo" href="{$base_dir}" title="{$shop_name|escape:'htmlall':'UTF-8'}">
						<img class="logo" src="{$img_dir}/logo.png" alt="{$shop_name|escape:'htmlall':'UTF-8'}" />
					</a>
					<div id="header_right">
						{$HOOK_TOP}
					</div>
				</div>
			</div>
			{if $page_name == 'index'} 
			<div id="home_slider" class="alpha omega">
				<div class="home_slider_inner container_5">
					{$HOOK_TOP_SLIDER}
				</div>
			</div>
			{else}
				{if isset($category)}
					{if $category->id AND $category->id != 1 AND $category->active}
						{if $scenes || $category->description || $category->id_image}
						<div class="content_scene_cat">
							<div class="category_info_wrapper">
								{if $scenes}
									<!-- Scenes -->
									{include file="$tpl_dir./scenes.tpl" scenes=$scenes}
								{else}
									<!-- Category image -->
									{if $category->id_image}
										<img src="{$link->getCatImageLink($category->link_rewrite, $category->id_image, 'category_default')}" alt="{$category->name|escape:'htmlall':'UTF-8'}" title="{$category->name|escape:'htmlall':'UTF-8'}" id="categoryImage" width="{$categorySize.width}" height="{$categorySize.height}" />
									{/if}
								{/if}
								<div class="category_info">
									<h1>
										{strip}
											{$category->name|escape:'htmlall':'UTF-8'}
											{if isset($categoryNameComplement)}
												{$categoryNameComplement|escape:'htmlall':'UTF-8'}
											{/if}
										{/strip}
									</h1>
									{if $category->description}
										<div class="cat_desc">
										{if strlen($category->description) > 120}
											<p id="category_description_short">{$category->description|truncate:120}</p>
											<p id="category_description_full" style="display:none">{$category->description}</p>
											<a href="#" onclick="$('#category_description_short').hide(); $('#category_description_full').show(); $(this).hide(); return false;" class="lnk_more">{l s='More'}</a>
										{else}
											<p>{$category->description}</p>
										{/if}
										</div>
									{/if}
								</div>
							</div><!-- .category_info_wrapper -->
						</div>
						{/if}
					{/if}
				{/if}
			{/if}
			<div id="home_banner" class="alpha omega">
				<div class="container_5 clearfix">
					<div class="banner black">
						<a href="{$link->getCMSLink('3', 'last-news')}">
							<img src="{$img_dir}tmp/banner1.png" />
							<h2>News</h2>
							<h3>Ultime notizie dal mondo HiFi</h3>
						</a>
					</div>
					<div class="banner">
						<a href="{$link->getCategoryLink(182)}">
							<img src="{$img_dir}tmp/banner2.png" />
							<h2>Mercatino Usato</h2>
							<h3>Il primo professionale in Europa</h3>
						</a>
					</div>
					<div class="banner">
						<a href="{$link->getCategoryLink(283)}">
							<img src="{$img_dir}tmp/banner3.png" />
							<h2>Offerte Speciali</h2>
							<h3>Approfittane subito!</h3>
						</a>
					</div>
					<div class="banner black">
						<a href="{$link->getCategoryLink(284)}">
							<img src="{$img_dir}tmp/banner1.png" />
							<h2>Consigliati</h2>
							<h3>Visti nelle maggiori riviste</h3>
						</a>
					</div>
				</div>
			</div>
			<div class="container_5 clearfix">
				<div class="page_shadow grid_5 alpha omega clearfix"></div>
				<div id="columns" class="grid_5 alpha omega clearfix">
					<!-- Left -->
					<div id="left_column" class="column grid_1 alpha">
						{$HOOK_LEFT_COLUMN}
					</div>

					<!-- Center -->
					<div id="center_column" class="grid_4 omega">
	{/if}
