(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.20246383593207095685784224770031869411468505859375p295 {+ 911816056059676 295 (7.65457e+088)}
; Y = 1.1557382607138519947653776398510672152042388916015625p-1012 {+ 701382772918233 -1012 (2.63332e-305)}
; 1.20246383593207095685784224770031869411468505859375p295 > 1.1557382607138519947653776398510672152042388916015625p-1012 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100100110 #b0011001111010100101010111000000111110011011100011100)))
(assert (= y (fp #b0 #b00000001011 #b0010011111011110011101100111000010000000011111011001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
