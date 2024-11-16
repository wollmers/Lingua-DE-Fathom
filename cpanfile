requires 'perl', '5.010001';

requires 'Mojolicious', '4.0';
requires 'Lingua::DE::Sentence', '0.07';
requires 'Text::Hyphen::DE', '1.02';

on test => sub {
    requires 'Test::More', '0.88';
};

on 'develop' => sub {
  requires 'Test::Spelling';
  requires 'Test::MinimumVersion';
  requires 'Test::Pod::Coverage';
  requires 'Test::PureASCII';
};
