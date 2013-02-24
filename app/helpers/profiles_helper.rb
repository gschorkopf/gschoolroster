module ProfilesHelper

  def fancy_twitter_link(twitter)
    "<a class='text-info' href='https://twitter.com/intent/user?screen_name=#{twitter}'>
    <i class='icon-twitter'></i> #{twitter}</a>".html_safe
  end

  def fancy_github_link(github)
    "<a target='_blank'
     href='https://github.com/#{github}' 
     class='muted'>
    <i class='icon-github'></i> #{github}</a>".html_safe
  end

   def hidden_email(email)
     "#{email[0..email.index("@")]}****.com"
   end

  def hidden_phone(phone)
    "(***)-***-#{phone[-4..-1]}"
  end

  def fancy_linkedin(profile)
    a = profile.name.split
    "<a class='text-inverse' href=#{valid_linkedin(profile.linkedin)}><i class='icon-linkedin'></i> <b>#{a[0][0].upcase}. #{a[-1].capitalize}</b></a>".html_safe
  end

  def valid_linkedin(input)
    if input.include?("http")
      input
    else
      "http://linkedin.com/in/#{input}"
    end
  end

  def fancy_web_link(url)
    "<a href='#{clean_link(url)}' class='text-info' ><i class='icon-bookmark text-error'>
    <small>
    blog:
    </small>
    #{pretty_url(url)}
    </i>
    </a>".html_safe
  end

  def clean_link(url)
    if url.include?("http")
      url
    else
      "http://#{url}"
    end
  end

  def pretty_url(url)
    url.gsub("http://","").gsub(".herokuapp.com", "").gsub("/","")
  end



end
