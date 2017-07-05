(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6902554475945466005981643320410512387752532958984375p-417 {- 3108634176577255 -417 (-4.99395e-126)}
; Y = -1.4739475831469446287513846982619725167751312255859375p1010 {- 2134470158853727 1010 (-1.61725e+304)}
; -1.6902554475945466005981643320410512387752532958984375p-417 < -1.4739475831469446287513846982619725167751312255859375p1010 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001011110 #b1011000010110100100101001011110101001101111011100111)))
(assert (= y (fp #b1 #b11111110001 #b0111100101010100101000001111100110100010011001011111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
