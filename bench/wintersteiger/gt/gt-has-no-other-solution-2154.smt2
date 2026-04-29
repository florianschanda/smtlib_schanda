(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.772312860543150403458412256441079080104827880859375p-232 {+ 3478187910955574 -232 (2.56792e-070)}
; Y = 1.10475631730322465529070541379041969776153564453125p-98 {+ 471780511571508 -98 (3.486e-030)}
; 1.772312860543150403458412256441079080104827880859375p-232 > 1.10475631730322465529070541379041969776153564453125p-98 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100010111 #b1100010110110110010010111010111001010000001000110110)))
(assert (= y (fp #b0 #b01110011101 #b0001101011010001010011110101110011011101111000110100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
