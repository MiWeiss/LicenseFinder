class LicenseFinder::License
  mit_header_regexp = /The MIT Licen[sc]e/
  mit_one_liner_regexp = /is released under the MIT licen[sc]e/
  mit_url_regexp = %r{MIT Licen[sc]e.*http://(?:www\.)?opensource\.org/licenses/mit-license}

  mit_matcher = AnyMatcher.new(
    Matcher.from_template(Template.named("MIT")),
    Matcher.new(mit_url_regexp),
    HeaderMatcher.new(Matcher.new(mit_header_regexp)),
    Matcher.new(mit_one_liner_regexp)
  )

  all << new(
    short_name:  "MIT",
    other_names: ["Expat", "MIT license", "MIT License"],
    url:         "http://opensource.org/licenses/mit-license",
    matcher:     mit_matcher
  )
end
