(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.446125141392018864650026443996466696262359619140625p33 {+ 2009169020533706 33 (1.24221e+010)}
; Y = 1.2735176318121730343335684665362350642681121826171875p503 {+ 1231813904708563 503 (3.33498e+151)}
; 1.446125141392018864650026443996466696262359619140625p33 = 1.2735176318121730343335684665362350642681121826171875p503 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000100000 #b0111001000110101010000011101110000110011101111001010)))
(assert (= y (fp #b0 #b10111110110 #b0100011000000101010000000110001110000011001111010011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
