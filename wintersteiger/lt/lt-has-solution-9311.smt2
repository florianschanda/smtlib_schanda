(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.500511855219273105177535398979671299457550048828125p845 {+ 2254105004660034 845 (3.52035e+254)}
; Y = 1.2572616862255141523263546332600526511669158935546875p712 {+ 1158603634221931 712 (2.70884e+214)}
; 1.500511855219273105177535398979671299457550048828125p845 < 1.2572616862255141523263546332600526511669158935546875p712 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101001100 #b1000000000100001100010111000000101101101010101000010)))
(assert (= y (fp #b0 #b11011000111 #b0100000111011011111001101110000011011010001101101011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
