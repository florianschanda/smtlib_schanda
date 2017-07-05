(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.958505523088211131010893950588069856166839599609375p-760 {- 4316725116612630 -760 (-3.22945e-229)}
; -1.958505523088211131010893950588069856166839599609375p-760 | == 1.958505523088211131010893950588069856166839599609375p-760
; [HW: 1.958505523088211131010893950588069856166839599609375p-760] 

; mpf : + 4316725116612630 -760
; mpfd: + 4316725116612630 -760 (3.22945e-229) class: Pos. norm. non-zero
; hwf : + 4316725116612630 -760 (3.22945e-229) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100000111 #b1111010101100000100111100011001010110011000000010110)))
(assert (= r (fp #b0 #b00100000111 #b1111010101100000100111100011001010110011000000010110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
