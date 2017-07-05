(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9360045847115963102424984754179604351520538330078125p-789 {+ 4215389898924221 -789 (5.9462e-238)}
; 1.9360045847115963102424984754179604351520538330078125p-789 | == 1.9360045847115963102424984754179604351520538330078125p-789
; [HW: 1.9360045847115963102424984754179604351520538330078125p-789] 

; mpf : + 4215389898924221 -789
; mpfd: + 4215389898924221 -789 (5.9462e-238) class: Pos. norm. non-zero
; hwf : + 4215389898924221 -789 (5.9462e-238) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011101010 #b1110111110011101111111110001100000111110000010111101)))
(assert (= r (fp #b0 #b00011101010 #b1110111110011101111111110001100000111110000010111101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
