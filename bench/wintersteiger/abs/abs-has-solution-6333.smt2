(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3989879389592358993610332618118263781070709228515625p-693 {+ 1796881933222137 -693 (3.40429e-209)}
; 1.3989879389592358993610332618118263781070709228515625p-693 | == 1.3989879389592358993610332618118263781070709228515625p-693
; [HW: 1.3989879389592358993610332618118263781070709228515625p-693] 

; mpf : + 1796881933222137 -693
; mpfd: + 1796881933222137 -693 (3.40429e-209) class: Pos. norm. non-zero
; hwf : + 1796881933222137 -693 (3.40429e-209) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101001010 #b0110011000100100000100101101010101010100000011111001)))
(assert (= r (fp #b0 #b00101001010 #b0110011000100100000100101101010101010100000011111001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
