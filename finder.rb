module OkCugit

  class Finder

    def initialize(repo_name)
      @repo_name = repo_name
    end

    def all_contributors
      clone
      directory
      contributors
    end

    def clone
      `git clone https://github.com/#{@repo_name}.git`
    end


    def contributors
      print `git log --all --format='<%cE>  %aN' | sort -u`
    end

    def directory
      index = @repo_name.chars.index("/")
      @repo_name[0..index] = ""
      Dir.chdir "#{@repo_name}"
    end
  end

end
