require "algorithm"

RSpec.describe Matchingsock do
    let(:matching){Matchingsock.new}

    it 'returns a pair of no matching socks if there is no pair in the list' do
        expect(matching.pairs([1,2,3,4])).to eq(0)
    end

    it 'return one pair of matching socks' do
        expect(matching.pairs([1,1,3,4])).to eq(1)
    end

    it 'return 2 pair of matching socks' do
        expect(matching.pairs([1,2,2,3,4,1])).to eq(2)
    end

    it 'return 3 pair of matching socks' do
        expect(matching.pairs([1,1,2,2,3,4,5,6,8,0,3])).to eq(3)
    end

    it 'return 4 pair of matching socks' do
        expect(matching.pairs([1,1,1,1,2,2,3,4,5,6,8,0,3])).to eq(4)
    end

    it 'A bag of 30 socks returns 10 pairs of matching socks' do
        expect(matching.pairs([15,17,116,162,163,21,10,10,10,10,1,1,1,1,2,2,3,4,6,5,5,6,8,0,7,7,13,11,11,3])).to eq(10)
    end

    it ' A bag of 80 socks returns 36 pairs' do
        expect(matching.pairs([15,17,116,162,163,21,10,10,10,10,1,1,1,1,2,2,3,4,6,15,17,116,162,163,21,10,
            10,10,10,1,1,1,1,2,2,3,4,6,5,5,6,8,0,7,7,13,11,11,3,15,17,116,162,163,21,10,10,10,10,1,1,1,1,
            2,2,3,4,6,15,17,116,162,163,21,10,
            10,3121,1312,3421,1231])).to eq(36)
    end
end


[15,17,116,162,163,21,10,10,10,10,1,1,1,1,2,2,3,4,6,15,17,116,162,163,21,10,
10,10,10,1,1,1,1,2,2,3,4,6,5,5,6,8,0,7,7,13,11,11,3,15,17,116,162,163,21,10,10,10,10,1,1,1,1,
2,2,3,4,6,15,17,116,162,163,21,10,
10,10,10,1,1].length
