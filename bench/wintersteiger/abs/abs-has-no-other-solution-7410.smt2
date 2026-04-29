(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2050284167476961183496086960076354444026947021484375p298 {- 923365901265287 298 (-6.13672e+089)}
; -1.2050284167476961183496086960076354444026947021484375p298 | == 1.2050284167476961183496086960076354444026947021484375p298
; [HW: 1.2050284167476961183496086960076354444026947021484375p298] 

; mpf : + 923365901265287 298
; mpfd: + 923365901265287 298 (6.13672e+089) class: Pos. norm. non-zero
; hwf : + 923365901265287 298 (6.13672e+089) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100101001 #b0011010001111100101111100000100010101110100110000111)))
(assert (= r (fp #b0 #b10100101001 #b0011010001111100101111100000100010101110100110000111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
