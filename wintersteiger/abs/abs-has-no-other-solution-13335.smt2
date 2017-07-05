(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.974666035340168601663890513009391725063323974609375p1002 {+ 4389505593568662 1002 (8.46349e+301)}
; 1.974666035340168601663890513009391725063323974609375p1002 | == 1.974666035340168601663890513009391725063323974609375p1002
; [HW: 1.974666035340168601663890513009391725063323974609375p1002] 

; mpf : + 4389505593568662 1002
; mpfd: + 4389505593568662 1002 (8.46349e+301) class: Pos. norm. non-zero
; hwf : + 4389505593568662 1002 (8.46349e+301) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111101001 #b1111100110000011101101101001101001001110110110010110)))
(assert (= r (fp #b0 #b11111101001 #b1111100110000011101101101001101001001110110110010110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
