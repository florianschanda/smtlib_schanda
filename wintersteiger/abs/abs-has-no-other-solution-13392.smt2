(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8401034533317346397751634867745451629161834716796875p-820 {+ 3783489599377467 -820 (2.63176e-247)}
; 1.8401034533317346397751634867745451629161834716796875p-820 | == 1.8401034533317346397751634867745451629161834716796875p-820
; [HW: 1.8401034533317346397751634867745451629161834716796875p-820] 

; mpf : + 3783489599377467 -820
; mpfd: + 3783489599377467 -820 (2.63176e-247) class: Pos. norm. non-zero
; hwf : + 3783489599377467 -820 (2.63176e-247) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011001011 #b1101011100010001000001010001100101010001000000111011)))
(assert (= r (fp #b0 #b00011001011 #b1101011100010001000001010001100101010001000000111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
