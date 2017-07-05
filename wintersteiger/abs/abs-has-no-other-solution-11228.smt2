(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2178631417036474005044510704465210437774658203125p-744 {- 981168363794312 -744 (-1.31608e-224)}
; -1.2178631417036474005044510704465210437774658203125p-744 | == 1.2178631417036474005044510704465210437774658203125p-744
; [HW: 1.2178631417036474005044510704465210437774658203125p-744] 

; mpf : + 981168363794312 -744
; mpfd: + 981168363794312 -744 (1.31608e-224) class: Pos. norm. non-zero
; hwf : + 981168363794312 -744 (1.31608e-224) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100010111 #b0011011111000101111000001111110010011110111110001000)))
(assert (= r (fp #b0 #b00100010111 #b0011011111000101111000001111110010011110111110001000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
