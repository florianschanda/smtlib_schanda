(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.46813187960176083635133181815035641193389892578125p-184 {- 2108278558534740 -184 (-5.9875e-056)}
; Y = 1.9585252907306880398863313530455343425273895263671875p-791 {+ 4316814142159923 -791 (1.50384e-238)}
; -1.46813187960176083635133181815035641193389892578125p-184 > 1.9585252907306880398863313530455343425273895263671875p-791 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101000111 #b0111011111010111011111011010100100011010110001010100)))
(assert (= y (fp #b0 #b00011101000 #b1111010101100001111010011101100000010011110000110011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
