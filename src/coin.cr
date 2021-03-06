require "./coin/cli"
require "./coin/exchanger"

def main
  parser = CLI::Parser.new ARGV

  begin
    amount, origin, targets = parser.act
    if origin.empty?
      exit 0
    end
  rescue e : CLI::Exception
    CLI::Dialog.die "#{e.message}"
  end

  token = (t = ENV["FIXER_API_TOKEN"]?) ? t : ""

  fixer = Exchanger::Fixer.new amount, origin, targets
  fixer.set_token token

  begin
    results = fixer.convert
  rescue e : Exchanger::Exception
    CLI::Dialog.die "#{e.message}"
  end

  CLI::Dialog.present amount, origin, targets, results
end

main
