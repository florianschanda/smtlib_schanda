(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.696387431204097850923062651418149471282958984375p-385 {+ 3136250175676272 -385 (2.15267e-116)}
; Y = 1.4816094377455921726749465960892848670482635498046875p583 {+ 2168976084369163 583 (4.69052e+175)}
; 1.696387431204097850923062651418149471282958984375p-385 = 1.4816094377455921726749465960892848670482635498046875p583 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001111110 #b1011001001000110011100100101101001011101111101110000)))
(assert (= y (fp #b0 #b11001000110 #b0111101101001010110000011001000010001111111100001011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
