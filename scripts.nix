{s}: 
{
  ghcidScript = s "dev" "ghcid --command 'cabal new-repl lib:ako-diagrams' --allow-eval --warnings";
  testScript = s "test" "cabal run test:ako-diagrams-tests";
  hoogleScript = s "hgl" "hoogle serve";
}
