(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3587225287638766690889724486623890697956085205078125p-798 {+ 1615542646870397 -798 (8.15069e-241)}
; 1.3587225287638766690889724486623890697956085205078125p-798 S == 1.1656425390160898292180036150966770946979522705078125p-399
; [HW: 1.1656425390160898292180036150966770946979522705078125p-399] 

; mpf : + 745987676989565 -399
; mpfd: + 745987676989565 -399 (9.02812e-121) class: Pos. norm. non-zero
; hwf : + 745987676989565 -399 (9.02812e-121) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011100001 #b0101101111010101001111010101100101100001000101111101)))
(assert (= r (fp #b0 #b01001110000 #b0010101001100111100011001010011111100110100001111101)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
