<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <title>${site['name']}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <link href='https://fonts.googleapis.com/css?family=Raleway:100|Roboto:300' rel='stylesheet' type='text/css'>
        <style type="text/css">
            header h1 {
                font-family: 'Raleway', sans-serif;
                font-size: 72pt;
                text-align: center;
            }

            nav a
            {
                display: inline-block;
                font-size: 14pt;
                font-family: 'Roboto', sans-serif;
                text-transform: uppercase;
            }

            nav
            {
                text-align: center;
            }

            header
            {
                margin-bottom: 3.0em;
            }

            .gallery-image
            {
                text-align: center;
                width: 100%;
            }

            .gallery-image>p
            {
                white-space: pre-line;
            }

            footer {
                text-align: center;
                margin-top: 2.0em;
                padding-top: 2.0em;
                border-top: 1px solid #eee;
                color: #aaa;
                white-space: pre-line;
                margin-bottom: 1.0em;
            }

            nav a
            {
                display: inline-block;
                margin-right: 1.0em;
                margin-left: 1.0em;
            }

            header h1 a
            {
                color: black;
                text-decoration: none;
            }

            header h1 a:hover
            {
                color: black;
                text-decoration: none;
            }

            .block-gallery-list a.active img
            {
                opacity: 0.4;
            }

            .image-navigation-bar
            {
                overflow: hidden;
                font-size: 1.3em;
                margin-top: 0.5em;
                text-align: right;
            }

            .image-navigation-bar .back
            {
                float: left;
            }

            .container
            {
                width: 849px;
            }

            .page-section
            {
                clear: both;
                margin-bottom: 1.0em;
            }
        </style>
    </head>
    <div class="container">
        <header>
            <h1>
                <a href="/">${site['name']}</a>
            </h1>

            <nav class="nav">
                % for page in site['pages']:
                    <a href="${request.route_url('page_view', page_id=page['id'], slug=page['slug'])}">${page['name']}</a>
                % endfor
            </nav>
        </header>

        <div>
            ${next.body()}
        </div>

        <footer>${site['footer']['text'] | n}</footer>
    </div>
</html>