class TwoFer
  TWO_FER = {
    English:  { template: 'One for %<name>s, one for me.',  you: 'you' },
    Japanese: { template: '%<name>sにひとつ、私にひとつ。', you: '君'  },
  }
  def self.two_fer(name = nil, language = :English)
    two_fer = TWO_FER[language]
    two_fer[:template] % { name: name || two_fer[:you] }
  end
end

__END__
I added two_fer_test.rb:

  def test_no_name_given_ja
    # skip
    assert_equal "君にひとつ、私にひとつ。", TwoFer.two_fer(nil, :Japanese)
  end

  def test_a_name_given_ja
    # skip
    assert_equal "太郎にひとつ、私にひとつ。", TwoFer.two_fer("太郎", :Japanese)
  end
