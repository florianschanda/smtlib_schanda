(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.396442389517117188546535544446669518947601318359375p79 {+ 1785417797703158 79 (8.44098e+023)}
; Y = -1.7787419898197054379807013901881873607635498046875p1008 {- 3507142135169784 1008 (-4.8792e+303)}
; 1.396442389517117188546535544446669518947601318359375p79 < -1.7787419898197054379807013901881873607635498046875p1008 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001001110 #b0110010101111101001111111001100110111001010111110110)))
(assert (= y (fp #b1 #b11111101111 #b1100011101011011101000101001001001001100001011111000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
