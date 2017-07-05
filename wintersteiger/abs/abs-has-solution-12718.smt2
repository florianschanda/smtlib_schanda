(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.831575209952525984391513702576048672199249267578125p953 {+ 3745081805672738 953 (1.39447e+287)}
; 1.831575209952525984391513702576048672199249267578125p953 | == 1.831575209952525984391513702576048672199249267578125p953
; [HW: 1.831575209952525984391513702576048672199249267578125p953] 

; mpf : + 3745081805672738 953
; mpfd: + 3745081805672738 953 (1.39447e+287) class: Pos. norm. non-zero
; hwf : + 3745081805672738 953 (1.39447e+287) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110111000 #b1101010011100010000111001110101011101001000100100010)))
(assert (= r (fp #b0 #b11110111000 #b1101010011100010000111001110101011101001000100100010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
