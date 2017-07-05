(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.387206718462641763522924520657397806644439697265625p49 {+ 1743824032983706 49 (7.80928e+014)}
; Y = -1.0424417833165462443645310486317612230777740478515625p795 {- 191140799529337 795 (-2.17219e+239)}
; 1.387206718462641763522924520657397806644439697265625p49 = -1.0424417833165462443645310486317612230777740478515625p795 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000110000 #b0110001100011111111110101100000010010110101010011010)))
(assert (= y (fp #b1 #b11100011010 #b0000101011011101011101101111011101010100000101111001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
