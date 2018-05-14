# spec/string_dependency_spec.rb
#notes on the logic
# totally we have six example sequences and an empty sequence
# for empty sequence the output is empty string 
# 1-one sequence,3-three sequences,2-two sequences
#for one sequence we have input string as "a =>" and the output is "a".
#for three sequences we have input string as  "a => 
#                                              b =>
#                                              c =>"  and the corresponding output returns "abc"
#for three sequences we have input string as  "a => 
#                                              b => c
#                                              c =>"  and corresponding output returns "acb"
#for three sequences we have input string as  "a => 
#                                              b => 
#                                              c => c"  and corresponding output returns "jobs can't depend on themselves"
#for six sequences we have input string as  "a => 
#                                            b => c 
#                                            c => f
#                                            d => a 
#                                            e => b
#                                            f =>" and corresponding output returns "fcbead"   
#for six sequences we have input string as  "a => 
#                                            b => c 
#                                            c => f
#                                            d => a 
#                                            e => 
#                                            f => b" and corresponding output returns "jobs can't have circular dependencies"------ "b => c => f => b" which is a circular dependency.
require "string_dependency"
describe StringDependency do

  describe ".stringorder" do
   context "given an empty string" do
      it "returns empty sequence" do
        expect(StringDependency.stringorder("")).to eql("")
      end
    end
    context "one sequence" do
      context "given a =>" do
        it "returns a" do
          expect(StringDependency.stringorder("a =>")).to eql("a")
        end
      end

    end
    context "three sequence" do
    context "given a =>
                   b =>
                   c =>" do

     it "returns abc" do
       expect(StringDependency.stringorder("a =>
b =>
c =>
")).to eql("abc")
 end
      end
     context "given a =>
                    b => c
                    c =>" do

     it "returns acb" do
       expect(StringDependency.stringorder("a =>
b => c
c =>
")).to eql("acb")
 end
      end
    end
  context "given   a =>
                   b =>
                   c => c" do

     it "returns Jobs Can't depend on themselves" do
       expect(StringDependency.stringorder("a =>
b =>
c => c
")).to eql("jobs can't depend on themselves")
 end
      end
 context "six sequence" do
  context "given   a =>
                   b => c
                   c => f
                   d => a
                   e => b
                   f =>  
                 " do
   it "returns fcbead" do
       expect(StringDependency.stringorder("a =>
b => c
c => f
d => a
e => b
f =>
")).to eql("fcbead")
  end
  end
  context "given   a =>
                   b => c
                   c => f
                   d => a
                   e =>
                   f => b  
                 " do
   it "returns jobs can't have circular dependencies" do
       expect(StringDependency.stringorder("a =>
b => c
c => f
d => a
e =>
f => b
")).to eql("jobs can't have circular dependencies")
  end
  end
 end
  end
end
