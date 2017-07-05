(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3943712126709877363595069255097769200801849365234375 193 {+ 1776090046430711 193 (1.75052e+058)}
; 1.3943712126709877363595069255097769200801849365234375 193 I == 1.3943712126709877363595069255097769200801849365234375 193
; [HW: 1.3943712126709877363595069255097769200801849365234375 193] 

; mpf : + 1776090046430711 193
; mpfd: + 1776090046430711 193 (1.75052e+058) class: Pos. norm. non-zero
; hwf : + 1776090046430711 193 (1.75052e+058) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011000000 #b0110010011110101100000110000010011100111110111110111)))
(assert (= r (fp #b0 #b10011000000 #b0110010011110101100000110000010011100111110111110111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
