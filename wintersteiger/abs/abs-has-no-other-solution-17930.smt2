(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2739202005468686085265517249354161322116851806640625p-876 {+ 1233626913112129 -876 (2.52852e-264)}
; 1.2739202005468686085265517249354161322116851806640625p-876 | == 1.2739202005468686085265517249354161322116851806640625p-876
; [HW: 1.2739202005468686085265517249354161322116851806640625p-876] 

; mpf : + 1233626913112129 -876
; mpfd: + 1233626913112129 -876 (2.52852e-264) class: Pos. norm. non-zero
; hwf : + 1233626913112129 -876 (2.52852e-264) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010010011 #b0100011000011111101000100101111100010000000001000001)))
(assert (= r (fp #b0 #b00010010011 #b0100011000011111101000100101111100010000000001000001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
