module ProfilesHelper
   def hidden_email(email)
     "#{email[0..email.index("@")]}****.com"
   end

  def hidden_phone(phone)
    "(***)-***-#{phone[-4..-1]}"
  end

  def fancy_twitter_link(twitter)
    "<a href='https://twitter.com/intent/user?screen_name=#{twitter}'".html_safe
  end

  def fancy_github_link(github)
    "<a href='https://github.com/#{github}' class='github-follow-button'>Follow On GitHub</a>".html_safe
  end
end
