(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5601897271538296418924574027187190949916839599609375p288 {- 2522870246466767 288 (-7.75919e+086)}
; -1.5601897271538296418924574027187190949916839599609375p288 | == 1.5601897271538296418924574027187190949916839599609375p288
; [HW: 1.5601897271538296418924574027187190949916839599609375p288] 

; mpf : + 2522870246466767 288
; mpfd: + 2522870246466767 288 (7.75919e+086) class: Pos. norm. non-zero
; hwf : + 2522870246466767 288 (7.75919e+086) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100011111 #b1000111101101000100110000000110110101110010011001111)))
(assert (= r (fp #b0 #b10100011111 #b1000111101101000100110000000110110101110010011001111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
