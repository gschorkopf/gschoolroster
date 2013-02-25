module ProfilesHelper
  
  def name_cleaner(name)
    if name.length > 17
      "#{name.split[0]} #{name.split[-1][0].upcase}"
    else
      "#{name.split[0]} #{name.split[-1]}"
    end
  end


  def fancy_twitter_link(twitter)
    "<iframe allowtransparency='true' frameborder='0' scrolling='no'
  src='//platform.twitter.com/widgets/follow_button.html?screen_name=#{twitter}'
  style='width:300px; height:20px;'></iframe>".html_safe
  end

  def fancy_github_link(github)
    "<a target='_blank'
     href='https://github.com/#{github}' 
     class='muted'>
    <i class='icon-github'></i> #{github}</a>".html_safe
  end

  def fancy_linkedin(profile)
    a = profile.name.split
    "<a target='_blank' class='test-inverse' href=#{valid_linkedin(profile.linkedin)}><i class='icon-linkedin'></i> #{a[0][0].upcase}. #{a[-1].capitalize}</a>".html_safe
  end

  def valid_linkedin(input)
    if input.include?("http")
      input
    else
      "http://linkedin.com/in/#{input}"
    end
  end

  def fancy_web_link(url)
    "<a target='_blank' class='text-error' href=#{clean_link(url)} ><i class='icon-bookmark text-error'></i> blog</a>".html_safe
  end

  def clean_link(url)
    if url.include?("http")
      url
    else
      "http://#{url}"
    end
  end

  def pretty_url(url)
    url.gsub("http://","")
  end

   def hidden_email(email)
     "#{email[0..email.index("@")]}****.com"
   end

  def hidden_phone(phone)
    "(***)-***-#{phone[-4..-1]}"
  end


end
