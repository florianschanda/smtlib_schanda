(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.488850631336191110420941186021082103252410888671875p38 {- 2201587521125502 38 (-4.09252e+011)}
; Y = 1.9770725771411419291467836956144310534000396728515625p79 {+ 4400343694326777 79 (1.19507e+024)}
; -1.488850631336191110420941186021082103252410888671875p38 < 1.9770725771411419291467836956144310534000396728515625p79 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000100101 #b0111110100100101010100001010001000110111110001111110)))
(assert (= y (fp #b0 #b10001001110 #b1111101000100001011011011010110010100011101111111001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
