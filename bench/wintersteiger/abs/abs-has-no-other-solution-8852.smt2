(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1765083151384845283615732114412821829319000244140625p25 {- 794922782285473 25 (-3.94771e+007)}
; -1.1765083151384845283615732114412821829319000244140625p25 | == 1.1765083151384845283615732114412821829319000244140625p25
; [HW: 1.1765083151384845283615732114412821829319000244140625p25] 

; mpf : + 794922782285473 25
; mpfd: + 794922782285473 25 (3.94771e+007) class: Pos. norm. non-zero
; hwf : + 794922782285473 25 (3.94771e+007) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000011000 #b0010110100101111101001100010000011111101111010100001)))
(assert (= r (fp #b0 #b10000011000 #b0010110100101111101001100010000011111101111010100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
