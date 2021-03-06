<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Delivery Method</h3>
    </div>
    <div class="row-fluid">
		<div class="span12">
			<table class="table">
				<tr>
					<td class="td-10">Mehtod Name</td>
					<td class="td-15"><input type="text" class="input-large" name="deliveryMethod" id="deliveryMethod" data-id="0"/></td>
					<td><span class="btn btn-primary saveDeliveryBtn" style="vertical-align:top;"> Add Method</span>
				</tr>
			</table>
		</div>
    </div>
    
    <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-striped table-bordered table-ds deliveryList" name="deliveryList" style="width:50%;">
    			<thead>	
    			<tr>
    				<th class="center">Delivery Method</th>
    				<th class="center td-5">Edit</th>
    				<th class="center td-5">Delete</th>
    			</tr>
    			<#if deliveryList?exists>
    			<#list deliveryList as delivery>
    			<tr class="row_${delivery.id}">
    				<td>${delivery.deliveryMehtod}</td>
    				<td class="center td-5"><span class="btn btn-success editDMethod" data-id="${delivery.id}"><i class="icon-pencil"></i></span></td>
    				<td class="center td-5"><span class="btn btn-danger deleteDMethod" data-id="${delivery.id}"><i class="icon-remove"></i></span></td>
    			</tr>
    			</#list>
    			</#if>
    		</table>
    	</div>
    </div>
    
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addDeliveryMethod.js"></script>
	<script>
		$(function(){
			new defysope.addDeliveryMethod.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>
