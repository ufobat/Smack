use Smack::Handler;

unit class Smack::Handler::Standalone
does Smack::Handler;

use HTTP::Server::Smack;

has $.http = HTTP::Server::Smack.new(
    host => $!host,
    port => $!port,
);

method run(&app) {
    say "Starting on http://$!host:$!port/...";
    $!http.run(&app);
}
