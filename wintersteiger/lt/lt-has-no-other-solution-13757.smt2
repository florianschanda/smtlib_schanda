(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.53775413761437018678179811104200780391693115234375p647 {+ 2421829333777020 647 (8.98037e+194)}
; Y = 1.6945635923223079100097265836666338145732879638671875p681 {+ 3128036335567859 681 (1.70014e+205)}
; 1.53775413761437018678179811104200780391693115234375p647 < 1.6945635923223079100097265836666338145732879638671875p681 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010000110 #b1000100110101010010000010101001001010111101001111100)))
(assert (= y (fp #b0 #b11010101000 #b1011000111001110111010110110101000000100001111110011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
