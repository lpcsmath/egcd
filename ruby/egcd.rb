#############################################################
#
#  switch on tail call optimization with
#
#  RubyVM::InstructionSequence.compile_option = {
#    tailcall_optimization: true,
#    trace_instruction: false
#  }
#

def egcdaux(a1,b2,a,b,c,d)
    r = c % d
    return a,b,d if r == 0
    q = c / d
    egcdaux(a,b,a1-q*a,b2-q*b,d,r)
end

def egcd(m,n)
    egcdaux(1,0,0,1,m,n)
end
