(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.921430660888335584246533471741713583469390869140625p-984 {+ 4149754781024458 -984 (1.17519e-296)}
; Y = 1.553634237686600361172395423636771738529205322265625p215 {+ 2493346946544922 215 (8.18084e+064)}
; 1.921430660888335584246533471741713583469390869140625p-984 < 1.553634237686600361172395423636771738529205322265625p215 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000100111 #b1110101111100010111000010011101000001100000011001010)))
(assert (= y (fp #b0 #b10011010110 #b1000110110111010111110010011000011001111010100011010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
