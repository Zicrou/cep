function getIDRegion() {
    var regionid = document.getElementById("_region_id").value
    var regionID = regionid
    if (regionID == "") {
        $("#_departement_id").children().remove();
        var departements = $('.departements').data('departements')
        var listdeparetement = [];
        $.each(departements,function(key, value) {
            listdeparetement += '<option value="' + value.id+ '">' + value.name + '</option>';
        });
        $("#_departement_id").append(listdeparetement).prepend("<option value='' selected='selected'></option>");
        
    }else{
        $.ajax({
            url: "/s/filtered",
            type: "GET",
            data: {regionId: regionID},
            success: function(data) {
                $("#_departement_id").children().remove();
                var listdeparetement = [];
                $.each(data,function(key, value) {
                    listdeparetement += '<option value="' + value.id+ '">' + value.name + '</option>';
                });
                $("#_departement_id").append(listdeparetement).prepend("<option value='' selected='selected'></option>");
            }
        });
    }
}



function getIDDomaine() {
    var domaineid = document.getElementById("ouvrier_domaine_id").value
    var domaineID = domaineid
    if (domaineID == "") {
        $("#ouvrier_metier_id").children().remove();
        var metiers = $('.metiers').data('metiers');
        console.log(metiers);
        var listmetiers = [];
        $.each(metiers,function(key, value) {
            listmetiers += '<option value="' + value.id+ '">' + value.name + '</option>';
        });
        $("#ouvrier_metier_id").append(listmetiers).prepend("<option value='' selected='selected'></option>");
        
    }else{
        $.ajax({
            url: "/ouvriers/filtered",
            type: "GET",
            data: {domaineId: domaineID},
            success: function(data) {
                $("#ouvrier_metier_id").children().remove();
                var listmetiers = [];
                $.each(data,function(key, value) {
                    listmetiers += '<option value="' + value.id+ '">' + value.name + '</option>';
                });
                $("#ouvrier_metier_id").append(listmetiers).prepend("<option value='' selected='selected'></option>");
            }
        });
    }
}


function getIDRegionResponzone() {
    var regionid = document.getElementById("responszone_region_id").value
    var regionID = regionid
    if (regionID == "") {
        $("#responszone_departement_id").children().remove();
        var departements = $('.departements').data('departements')
        var listdeparetement = [];
        $.each(departements,function(key, value) {
            listdeparetement += '<option value="' + value.id+ '">' + value.name + '</option>';
        });
        $("#responszone_departement_id").append(listdeparetement).prepend("<option value='' selected='selected'></option>");
        
    }else{
        $.ajax({
            url: "/responszones/filtered",
            type: "GET",
            data: {regionId: regionID},
            success: function(data) {
                $("#responszone_departement_id").children().remove();
                var listdeparetement = [];
                $.each(data,function(key, value) {
                    listdeparetement += '<option value="' + value.id+ '">' + value.name + '</option>';
                });
                $("#responszone_departement_id").append(listdeparetement).prepend("<option value='' selected='selected'></option>");
            }
        });
    }
}