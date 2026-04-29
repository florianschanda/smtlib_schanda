(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.216426889671910149814948454149998724460601806640625p-851 {- 974700059679370 -851 (-8.10139e-257)}
; Y = 1.1533505087942137468104419895098544657230377197265625p791 {+ 690629294262697 791 (1.50206e+238)}
; -1.216426889671910149814948454149998724460601806640625p-851 < 1.1533505087942137468104419895098544657230377197265625p791 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010101100 #b0011011101100111110000001010110100011101101010001010)))
(assert (= y (fp #b0 #b11100010110 #b0010011101000001111110101001110000011000100110101001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
