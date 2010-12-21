xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "DarkoTime!"
    xml.description "The questions and sayings of a man named Darko"
    xml.link darkos_path

    for darko in @darkos
      xml.item do
        xml.title darko.status
        xml.description darko.status
        xml.pubDate darko.created_at.to_s(:rfc822)
        xml.link darko_url(darko)
        xml.guid darko_url(darko)
      end
    end
  end
end