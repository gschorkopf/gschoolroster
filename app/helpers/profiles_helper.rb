module ProfilesHelper
   def hidden_email(email)
     "#{email[0..email.index("@")]}****.com"
   end

  def hidden_phone(phone)
    "(***)-***-#{phone[-4..-1]}"
  end

  def fancy_web_link(url)
    if url.include?("herokuapp.com")
      link_to url.gsub(/http:\/\//,"").gsub(/.herokuapp.com/,""), url
    else
      link_to url.gsub(/http:\/\//,""), url
    end
  end

  def fancy_twitter_link(twitter)
    "<a href='https://twitter.com/intent/user?screen_name=#{twitter}'>
    <i class='icon-twitter'></i>#{twitter}</a>".html_safe
  end

  def fancy_github_link(github)
    "<a target='_blank' href='https://github.com/#{github}' class='github-follow-button'>
    <i class='icon-github'></i>#{github}</a>".html_safe
  end
end
