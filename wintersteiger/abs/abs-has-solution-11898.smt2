(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6292278280004151014281887910328805446624755859375p560 {+ 2833790211713816 560 (6.14864e+168)}
; 1.6292278280004151014281887910328805446624755859375p560 | == 1.6292278280004151014281887910328805446624755859375p560
; [HW: 1.6292278280004151014281887910328805446624755859375p560] 

; mpf : + 2833790211713816 560
; mpfd: + 2833790211713816 560 (6.14864e+168) class: Pos. norm. non-zero
; hwf : + 2833790211713816 560 (6.14864e+168) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000101111 #b1010000100010101000100110010111011111110101100011000)))
(assert (= r (fp #b0 #b11000101111 #b1010000100010101000100110010111011111110101100011000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
