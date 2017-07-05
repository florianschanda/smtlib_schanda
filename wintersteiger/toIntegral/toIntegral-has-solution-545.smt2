(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9223141066773636875808506374596618115901947021484375 786 {- 4153733467150727 786 (-7.8235e+236)}
; -1.9223141066773636875808506374596618115901947021484375 786 I == -1.9223141066773636875808506374596618115901947021484375 786
; [HW: -1.9223141066773636875808506374596618115901947021484375 786] 

; mpf : - 4153733467150727 786
; mpfd: - 4153733467150727 786 (-7.8235e+236) class: Neg. norm. non-zero
; hwf : - 4153733467150727 786 (-7.8235e+236) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100010001 #b1110110000011100110001101111110011010001100110000111)))
(assert (= r (fp #b1 #b11100010001 #b1110110000011100110001101111110011010001100110000111)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
