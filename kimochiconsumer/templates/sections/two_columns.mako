<%page args="section" />
<div class="row">
    <div class="col-md-6">
        <%include file="${section['sections'][0]['type']}.mako" args="section=section['sections'][0]" />
    </div>
    <div class="col-md-6">
        <%include file="${section['sections'][1]['type']}.mako" args="section=section['sections'][1]" />
    </div>
</div>