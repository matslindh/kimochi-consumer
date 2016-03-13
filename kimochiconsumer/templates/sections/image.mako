<%page args="section" />

% if len(section['images']) > 1:
    <div id="carousel-section-${section['id']}" class="carousel slide" data-ride="carousel" data-interval="false">
        <div class="carousel-inner">
            % for i, image in enumerate(section['images']):
                <div class="item ${'active' if i == 0 else ''}">
                    <img src="${image['source']['1280']}" alt="${image['title']}" style="max-width: 100%;" />
                </div>
            % endfor
        </div>

        <a class="left carousel-control" href="#carousel-section-${section['id']}" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-section-${section['id']}" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
% elif section['images']:
    <div>
        <img src="${section['images'][0]['source']['1280']}" alt="${section['images'][0]['title']}" style="max-width: 100%;" />
    </div>
% endif