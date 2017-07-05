(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9320193814254607023173093693912960588932037353515625p901 {- 4197442138889785 901 (-3.26616e+271)}
; -1.9320193814254607023173093693912960588932037353515625p901 | == 1.9320193814254607023173093693912960588932037353515625p901
; [HW: 1.9320193814254607023173093693912960588932037353515625p901] 

; mpf : + 4197442138889785 901
; mpfd: + 4197442138889785 901 (3.26616e+271) class: Pos. norm. non-zero
; hwf : + 4197442138889785 901 (3.26616e+271) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110000100 #b1110111010011000110100100111101001110101111000111001)))
(assert (= r (fp #b0 #b11110000100 #b1110111010011000110100100111101001110101111000111001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
