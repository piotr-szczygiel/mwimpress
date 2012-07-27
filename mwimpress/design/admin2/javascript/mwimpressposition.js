$("document").ready(function()
{
    $("[class^=mw_impress_slides_position_]").each(function(){
        var objId = $(this).attr("id");
        match = objId.match(/mw_impress_(\d+)/);
        objId = match[1];

        var newSlide = $('<div class="mwImpressPosition_slide">' + objId + '</div>');
        var mwImpressPosition = $(this).val().split("|");
        
        console.log("setup " + objId + ": top:" + mwImpressPosition[1] + ",left:" + mwImpressPosition[0]);
        newSlide.offset({'top' : mwImpressPosition[1], 'left' : mwImpressPosition[0]});
        
        $('#mwImpressPosition_stage').append(newSlide);
    });
    
    $("#mwImpressTable tbody").sortable(); 
    $(".mwImpressPosition_slide").draggable({ 
        containment: "parent",
        stop: function(event, ui) 
        {  
            var mwimpress = new mwImpressPosition($(this));
            mwimpress.getRealPosition();
        }
    });
});


function mwImpressPosition(slide)
{
    this.slide = slide;
    
    this.getRealPosition = function()
    {
        var parent = this.slide.parent();
        
        var realposition = new Object();
        realposition.left = this.slide.offset().left - parent.offset().left;
        realposition.top = this.slide.offset().top - parent.offset().top;
        
        console.log(realposition);
        var stringPosition = realposition.left + "|" + realposition.top;
        
        var object_ID = this.slide.text();
        $(".mw_impress_slides_position_"+object_ID).val(stringPosition);
    }
}