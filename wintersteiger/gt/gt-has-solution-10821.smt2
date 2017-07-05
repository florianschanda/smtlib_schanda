(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.222991421473650586193571143667213618755340576171875p817 {- 1004264082655550 817 (-1.06888e+246)}
; Y = -1.3630364738019349335473862083745189011096954345703125p885 {- 1634970928136293 885 (-3.51604e+266)}
; -1.222991421473650586193571143667213618755340576171875p817 > -1.3630364738019349335473862083745189011096954345703125p885 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100110000 #b0011100100010101111101110011111010000100100100111110)))
(assert (= y (fp #b1 #b11101110100 #b0101110011101111111101010101011000111100000001100101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
