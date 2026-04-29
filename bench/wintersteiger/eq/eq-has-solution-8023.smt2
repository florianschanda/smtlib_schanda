(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.653768566573521781037925393320620059967041015625p308 {+ 2944311872807056 308 (8.62409e+092)}
; Y = -1.9997466771259981843655850752838887274265289306640625p-228 {- 4502458762569537 -228 (-4.63592e-069)}
; 1.653768566573521781037925393320620059967041015625p308 = -1.9997466771259981843655850752838887274265289306640625p-228 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100110011 #b1010011101011101011000000111010010010110000010010000)))
(assert (= y (fp #b1 #b01100011011 #b1111111111101111011001011111001010001010011101000001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
