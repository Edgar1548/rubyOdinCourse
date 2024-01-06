require 'spec_helper'
require_relative '../solution/caesar_solution'

RSpec.describe 'Caesar Cypher Solution' do
    describe 'example case' do
        it 'returns a string with rigth shift of 5' do
        expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
        end
    end

    describe 'hackerEarth base testcases' do
        it 'returns z' do
        expect(caesar_cipher("x", 2)).to eq("z")
        end

        it 'returns rAbk' do
        expect(caesar_cipher("oXyh", 3)).to eq("rAbk")
        end

        it 'returns pp' do
        expect(caesar_cipher("nn", 2)).to eq("pp")
        end
    end
    describe 'hackerRank base testcases' do
        it 'returns Lipps_Asvph!' do
        expect(caesar_cipher("Hello_World!", 4)).to eq("Lipps_Asvph!")
        end
    end
    describe 'more HackerRank testcases' do
        it 'returns the same' do
            expect(caesar_cipher("Chipering.", 26)).to eq("Chipering.")
        end
        it 'returns fff.jkl.gh' do
            expect(caesar_cipher("www.abc.xy", 87)).to eq("fff.jkl.gh")
        end
        it 'returns the 159357fwzx' do
            expect(caesar_cipher("159357lcfd", 98)).to eq("159357fwzx")
        end
        it 'returns the same' do
            expect(caesar_cipher("D3q4", 0)).to eq("D3q4")
        end
        it 'returns fff.jkl.gh' do
            expect(caesar_cipher("middle-Outz", 2)).to eq("okffng-Qwvb")
        end
        it 'returns some weird thing' do
            expect(caesar_cipher("!m-rB`-oN!.W`cLAcVbN/CqSoolII!SImji.!w/`Xu`uZa1TWPRq`uRBtok`xPT`lL-zPTc.BSRIhu..-!.!tcl!-U", 62)).to eq("!w-bL`-yX!.G`mVKmFlX/MaCyyvSS!CSwts.!g/`He`eJk1DGZBa`eBLdyu`hZD`vV-jZDm.LCBSre..-!.!dmv!-E")
        end
        it 'returns some probably path' do
            expect(caesar_cipher("Pz-/aI/J`EvfthGH", 66)).to eq("Dn-/oW/X`SjthvUV")
        end 
        it 'returns a very large string' do
            expect(caesar_cipher("DNFjxo?b5h*5<LWbgs6?V5{3M].1hG)pv1VWq4(!][DZ3G)riSJ.CmUj9]7Gzl?VyeJ2dIPEW4GYW*scT8(vhu9wCr]q!7eyaoy.", 45)).to eq("WGYcqh?u5a*5<EPuzl6?O5{3F].1aZ)io1OPj4(!][WS3Z)kbLC.VfNc9]7Zse?OrxC2wBIXP4ZRP*lvM8(oan9pVk]j!7xrthr.")
        end
        it 'returns a medium string' do
            expect(caesar_cipher("6DWV95HzxTCHP85dvv3NY2crzt1aO8j6g2zSDvFUiJj6XWDlZvNNr", 87)).to eq("6MFE95QigCLQY85mee3WH2laic1jX8s6p2iBMeODrSs6GFMuIeWWa")
        end 
        it 'returns other medium string' do
            expect(caesar_cipher("1X7T4VrCs23k4vv08D6yQ3S19G4rVP188M9ahuxB6j1tMGZs1m10ey7eUj62WV2exLT4C83zl7Q80M", 27)).to eq("1Y7U4WsDt23l4ww08E6zR3T19H4sWQ188N9bivyC6k1uNHAt1n10fz7fVk62XW2fyMU4D83am7R80N")
        end
        it 'returns a short string' do
            expect(caesar_cipher("Always-Look-on-the-Bright-Side-of-Life", 5)).to eq("Fqbfdx-Qttp-ts-ymj-Gwnlmy-Xnij-tk-Qnkj")
        end 
    end
end