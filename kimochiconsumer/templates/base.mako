<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <title>${site['name']}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        % if site['meta_description']:
            <meta name="description" content="${site['meta_description']}" />
        % endif

        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <link href='https://fonts.googleapis.com/css?family=Raleway:100|Roboto:300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="${request.static_url('kimochiconsumer:static/consumer.css')}">
    </head>
    <div class="container">
        <header>
            <h1>
                <a href="/">${site['name']}</a>
            </h1>

            % if site['tagline']:
                <p class="tagline">${site['tagline']}</p>
            % endif

            <nav class="nav">
                % for page_link in site['pages']:
                    <a class="${'active_page' if page and page['id'] == page_link['id'] else 'nonactive_page'}" href="${request.route_url('page_view', page_id=page_link['id'], slug=page_link['slug'])}">${page_link['name']}</a>
                % endfor
            </nav>
        </header>

        <div>
            ${next.body()}
        </div>

        <footer>${site['footer']['text'] | n}</footer>
    </div>
</html>