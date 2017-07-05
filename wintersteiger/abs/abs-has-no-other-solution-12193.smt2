(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0034986792655826715048306141397915780544281005859375p-913 {+ 15756650636767 -913 (1.44921e-275)}
; 1.0034986792655826715048306141397915780544281005859375p-913 | == 1.0034986792655826715048306141397915780544281005859375p-913
; [HW: 1.0034986792655826715048306141397915780544281005859375p-913] 

; mpf : + 15756650636767 -913
; mpfd: + 15756650636767 -913 (1.44921e-275) class: Pos. norm. non-zero
; hwf : + 15756650636767 -913 (1.44921e-275) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001101110 #b0000000011100101010010100001100100000110010111011111)))
(assert (= r (fp #b0 #b00001101110 #b0000000011100101010010100001100100000110010111011111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
