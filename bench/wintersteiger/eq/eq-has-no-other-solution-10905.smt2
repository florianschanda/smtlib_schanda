(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.712260612484147959122537940857000648975372314453125p566 {- 3207736628974290 566 (-4.13568e+170)}
; Y = 1.3593627223836068917961483748513273894786834716796875p939 {+ 1618425822617659 939 (6.31686e+282)}
; -1.712260612484147959122537940857000648975372314453125p566 = 1.3593627223836068917961483748513273894786834716796875p939 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000110101 #b1011011001010110101101100010010011011001001011010010)))
(assert (= y (fp #b0 #b11110101010 #b0101101111111111001100100000010000001010000000111011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
