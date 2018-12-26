<div class="tdmdownloads">

   <!-- Download logo-->
	<div class="tdmdownloads-logo center marg10">
		<a title="<{$smarty.const._MD_TDMDOWNLOADS_DOWNLOAD}>" href="<{$xoops_url}>/modules/TDMDownloads/index.php"><img src="<{$xoops_url}>/modules/TDMDownloads/images/logo-en.gif" alt="<{$smarty.const._MD_TDMDOWNLOADS_DOWNLOAD}>" /></a>
	</div>
	
	<!-- Download searchform -->
	<div class="tdmdownloads-searchform"><{$searchForm}></div>
	<div class="tdmdownloads-thereare"><{$lang_thereare}></div>
	
	<table width="100%" cellspacing="0" class="outer_sertec" border="1">
	    <tr>
	        <td class="head" align="center" style="width: 40px; vertical-align: middle;">&nbsp;</td>
	        <td class="head" align="left" style="vertical-align: middle;"><{$smarty.const._MD_TDMDOWNLOADS_SEARCH_TITLE}></td>
	        <td class="head" align="left" style="width: 150px; vertical-align: middle;" colspan="2"><{$smarty.const._MD_TDMDOWNLOADS_SEARCH_CATEGORIES}></td>
	        <{foreach item=field from=$field}>
	        <td class="head" align="left" style="vertical-align: middle;"><{$field}></td>
	        <{/foreach}>
	        <td class="head" align="center" style="width: 100px; vertical-align: middle;"><{$smarty.const._MD_TDMDOWNLOADS_SEARCH_DATE}></td>
	        <td class="head" align="center" style="width: 60px; vertical-align: middle;"><{$smarty.const._MD_TDMDOWNLOADS_SEARCH_NOTE}></td>
	        <td class="head" align="center" style="width: 60px; vertical-align: middle;"><{$smarty.const._MD_TDMDOWNLOADS_SEARCH_HITS}></td>
	    </tr>
	    <{foreach item=downloads from=$downloads}>
	    <{cycle values=odd,even assign=class}>
	    <tr class="<{$class}>">
	        <td align="center" style="vertical-align: middle;"><a href="<{$xoops_url}>/modules/TDMDownloads/visit.php?cid=<{$downloads.cid}>&amp;lid=<{$downloads.lid}>" target="_blank"><img src="./images/download.png" alt="<{$smarty.const._MD_TDMDOWNLOADS_SEARCH_DOWNLOAD}><{$downloads.title}>" title="<{$smarty.const._MD_TDMDOWNLOADS_SEARCH_DOWNLOAD}><{$downloads.title}>" /></a></td>
	        <td align="left" style="vertical-align: middle;"><a href="<{$xoops_url}>/modules/TDMDownloads/singlefile.php?cid=<{$downloads.cid}>&amp;lid=<{$downloads.lid}>" title="<{$downloads.title}>"><{$downloads.title}></a></td>
	        <td align="center" style="width: 32px; vertical-align: middle;"><img src="<{$downloads.imgurl}>" alt="<{$downloads.cat}>" title="<{$downloads.cat}>" width="30" /></td>
	        <td align="left" style="vertical-align: middle;"><a href="<{$xoops_url}>/modules/TDMDownloads/viewcat.php?cid=<{$downloads.cid}>" target="_blank" title="<{$downloads.cat}>"><{$downloads.cat}></a></td>
	        <{foreach item=fielddata from=$downloads.fielddata}>
	        <td align="left" style="vertical-align: middle;"><{$fielddata}></td>
	        <{/foreach}>
	        <td align="center" style="vertical-align: middle;"><{$downloads.date}></td>
	        <td align="center" style="vertical-align: middle;"><{$downloads.rating}></td>
	        <td align="center" style="vertical-align: middle;"><{$downloads.hits}></td>
	    </tr>
	    <{/foreach}>
	</table>
	
	<{if $pagenav != ''}>
	<!-- Download Pagenav-->
	<div class="tdmdownloads-pagenav"><{$pagenav}></div>
	<{/if}>
	
</div>