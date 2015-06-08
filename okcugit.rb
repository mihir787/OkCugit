require_relative 'finder'

repo_name = ARGV[0].dup
finder = OkCugit::Finder.new(repo_name)
contacts = finder.all_contributors
