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
*  @version  Release: $Revision$
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<!-- Module myhomeslider -->
{if isset($myhomeslider)}
<script type="text/javascript">
{if isset($myhomeslider_slides) && $myhomeslider_slides|@count > 1}
	{if $myhomeslider.loop == 1}
		var myhomeslider_loop = true;
	{else}
		var myhomeslider_loop = false;
	{/if}
{else}
	var myhomeslider_loop = false;
{/if}
var myhomeslider_speed = {$myhomeslider.speed};
var myhomeslider_pause = {$myhomeslider.pause};
</script>
{/if}
{if isset($myhomeslider_slides)}
<ul id="homeslider">
{foreach from=$myhomeslider_slides item=slide}
	{if $slide.active}
		<li color="{$slide.color}">
			<div class="container_5 clearfix">
				<a href="{$slide.url|escape:'htmlall':'UTF-8'}" title="{$slide.description|escape:'htmlall':'UTF-8'}"><img src="{$smarty.const._MODULE_DIR_}/myhomeslider/images/{$slide.image|escape:'htmlall':'UTF-8'}" alt="{$slide.legend|escape:'htmlall':'UTF-8'}" legend="{$slide.description|escape:'htmlall':'UTF-8'}" height="{$myhomeslider.height|intval}" width="{$myhomeslider.width|intval}" /></a>
			</div>
		</li>
	{/if}
{/foreach}
</ul>
{/if}
<!-- /Module myhomeslider -->
