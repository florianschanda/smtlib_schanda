(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.063880018826047102464826821233145892620086669921875p202 {+ 287690028981406 202 (6.83836e+060)}
; +oo m 1.063880018826047102464826821233145892620086669921875p202 == 1.063880018826047102464826821233145892620086669921875p202
; [HW: 1.063880018826047102464826821233145892620086669921875p202] 

; mpf : + 287690028981406 202
; mpfd: + 287690028981406 202 (6.83836e+060) class: Pos. norm. non-zero
; hwf : + 287690028981406 202 (6.83836e+060) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b10011001001 #b0001000001011010011100001101111110111001110010011110)))
(assert (= r (fp #b0 #b10011001001 #b0001000001011010011100001101111110111001110010011110)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
