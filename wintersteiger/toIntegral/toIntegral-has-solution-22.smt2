(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2904152317446924147503750646137632429599761962890625 193 {- 1307913929468113 193 (-1.62001e+058)}
; -1.2904152317446924147503750646137632429599761962890625 193 I == -1.2904152317446924147503750646137632429599761962890625 193
; [HW: -1.2904152317446924147503750646137632429599761962890625 193] 

; mpf : - 1307913929468113 193
; mpfd: - 1307913929468113 193 (-1.62001e+058) class: Neg. norm. non-zero
; hwf : - 1307913929468113 193 (-1.62001e+058) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011000000 #b0100101001011000101001110001001010011010100011010001)))
(assert (= r (fp #b1 #b10011000000 #b0100101001011000101001110001001010011010100011010001)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
