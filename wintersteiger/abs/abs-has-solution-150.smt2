(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2487288628985042659991222535609267652034759521484375p729 {+ 1120175214265991 729 (3.52643e+219)}
; 1.2487288628985042659991222535609267652034759521484375p729 | == 1.2487288628985042659991222535609267652034759521484375p729
; [HW: 1.2487288628985042659991222535609267652034759521484375p729] 

; mpf : + 1120175214265991 729
; mpfd: + 1120175214265991 729 (3.52643e+219) class: Pos. norm. non-zero
; hwf : + 1120175214265991 729 (3.52643e+219) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011011000 #b0011111110101100101100011101101110111000011010000111)))
(assert (= r (fp #b0 #b11011011000 #b0011111110101100101100011101101110111000011010000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
