(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.9087563852317688262161254897364415228366851806640625p-737 {+ 4092674917900353 -737 (2.64024e-222)}
; -oo > 1.9087563852317688262161254897364415228366851806640625p-737 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b00100011110 #b1110100010100100010000100010101010011010000001000001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
