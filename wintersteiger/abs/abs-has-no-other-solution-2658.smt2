(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0312424276354337226990764975198544561862945556640625p-409 {+ 140703385457089 -409 (7.79996e-124)}
; 1.0312424276354337226990764975198544561862945556640625p-409 | == 1.0312424276354337226990764975198544561862945556640625p-409
; [HW: 1.0312424276354337226990764975198544561862945556640625p-409] 

; mpf : + 140703385457089 -409
; mpfd: + 140703385457089 -409 (7.79996e-124) class: Pos. norm. non-zero
; hwf : + 140703385457089 -409 (7.79996e-124) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001100110 #b0000011111111111100000001111010011110001000111000001)))
(assert (= r (fp #b0 #b01001100110 #b0000011111111111100000001111010011110001000111000001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
