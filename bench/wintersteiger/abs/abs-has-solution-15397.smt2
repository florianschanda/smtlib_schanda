(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0333838881260299924491619094624184072017669677734375p260 {+ 150347666124567 260 (1.91452e+078)}
; 1.0333838881260299924491619094624184072017669677734375p260 | == 1.0333838881260299924491619094624184072017669677734375p260
; [HW: 1.0333838881260299924491619094624184072017669677734375p260] 

; mpf : + 150347666124567 260
; mpfd: + 150347666124567 260 (1.91452e+078) class: Pos. norm. non-zero
; hwf : + 150347666124567 260 (1.91452e+078) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000011 #b0000100010001011110110001011001110110110111100010111)))
(assert (= r (fp #b0 #b10100000011 #b0000100010001011110110001011001110110110111100010111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
