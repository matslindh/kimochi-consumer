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
        </style>
    </head>
    <div class="container">
        <header>
            <h1>
                ${site['name']}
            </h1>

            <nav class="nav">
                % for page in site['pages']:
                    <a href="${request.route_url('page_view', page_id=page['id'])}">${page['name']}</a>
                % endfor
            </nav>
        </header>

        <div>
            ${next.body()}
        </div>
    </div>
</html>