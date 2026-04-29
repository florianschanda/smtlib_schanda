(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.842208954347754445990403837640769779682159423828125p819 {+ 3792971932968642 819 (6.44029e+246)}
; Y = 1.4220821838888253463295541223487816751003265380859375p29 {+ 1900889166081439 29 (7.63475e+008)}
; 1.842208954347754445990403837640769779682159423828125p819 = 1.4220821838888253463295541223487816751003265380859375p29 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100110010 #b1101011110011011000000011000101101010010011011000010)))
(assert (= y (fp #b0 #b10000011100 #b0110110000001101100100111111100000000110110110011111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
