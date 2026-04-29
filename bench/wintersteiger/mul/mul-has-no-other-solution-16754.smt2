(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.613797455486254417422742335475049912929534912109375p620 {+ 2764297991808854 620 (7.02177e+186)}
; Y = -1.604848164228474871606522356159985065460205078125p849 {- 2723993967035088 849 (-6.02421e+255)}
; 1.613797455486254417422742335475049912929534912109375p620 * -1.604848164228474871606522356159985065460205078125p849 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001101011 #b1001110100100001110101000111110110101110011101010110)))
(assert (= y (fp #b1 #b11101010000 #b1001101011010111010101000100110001101000001011010000)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
