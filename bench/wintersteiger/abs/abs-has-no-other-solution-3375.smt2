(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4123697231901177762125598746933974325656890869140625p-691 {+ 1857148131697889 -691 (1.37474e-208)}
; 1.4123697231901177762125598746933974325656890869140625p-691 | == 1.4123697231901177762125598746933974325656890869140625p-691
; [HW: 1.4123697231901177762125598746933974325656890869140625p-691] 

; mpf : + 1857148131697889 -691
; mpfd: + 1857148131697889 -691 (1.37474e-208) class: Pos. norm. non-zero
; hwf : + 1857148131697889 -691 (1.37474e-208) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101001100 #b0110100110010001000011111110101011110110010011100001)))
(assert (= r (fp #b0 #b00101001100 #b0110100110010001000011111110101011110110010011100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
