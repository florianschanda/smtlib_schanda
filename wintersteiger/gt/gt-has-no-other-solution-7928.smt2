(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5241383581846477124344119147281162440776824951171875p1008 {- 2360509314610963 1008 (-4.18081e+303)}
; Y = 1.87104019017129186153169939643703401088714599609375p810 {+ 3922816275880156 810 (1.27755e+244)}
; -1.5241383581846477124344119147281162440776824951171875p1008 > 1.87104019017129186153169939643703401088714599609375p810 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111101111 #b1000011000101101111011100111001011111011011100010011)))
(assert (= y (fp #b0 #b11100101001 #b1101111011111100011111010110101001001001100011011100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
