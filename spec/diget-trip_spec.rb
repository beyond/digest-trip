# -*- encoding: UTF-8 -*-
require File.expand_path(File.join('./', 'spec_helper'), File.dirname(__FILE__))

describe Digest::Trip do
  subject { described_class.digest src }

  describe "旧方式" do
    TABLE_OLD = %w[
      0             IGEMrmvKLI
      <             7VUOmXKYm6
      66666666      ixst/7hh6s
      000000        xSZBqZMT.M
      00000000      fV146ZJdLc
      00000000000   fV146ZJdLc
      ああああ      PZGoP0V9Oo
      あああああ    PZGoP0V9Oo
      istrip        /WG5qp963c
      ﾊﾝｶｸ          xkjDBidf56
    ]

    Hash[ *TABLE_OLD ].each do |src, dest|
      context "#{src} -> #{dest}" do
        let(:src) { src }
        it { should == dest }
      end
    end
  end

  describe "新方式" do
    context "12文字" do
      TABLE_NEW_12 = %w[
        000000000000    wjEekmYN5HtF
        222222222222    qObcDgx.tp.y
        >>>>>>>>>>>>    /y08SHnxuoq/
        ああああああ    Wr9ky1zAYOBy
        ﾊﾝｶｸﾊﾝｶｸﾊﾝｶｸ    IELfYnfdNlRs
      ]

      Hash[ *TABLE_NEW_12 ].each do |src, dest|
        context "#{src} -> #{dest}" do
          let(:src) { src }
          it { should == dest }
        end
      end
    end

    context "13文字" do
      TABLE_NEW_13 = %w[
        1111111111111   N6TtUC4.aWi7
      ]

      Hash[ *TABLE_NEW_13 ].each do |src, dest|
        context "#{src} -> #{dest}" do
          let(:src) { src }
          it { should == dest }
        end
      end
    end

  end
end

