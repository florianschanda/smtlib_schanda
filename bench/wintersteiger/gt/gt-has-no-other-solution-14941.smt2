(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3087441229212630755540658356039784848690032958984375p-506 {+ 1390459916941031 -506 (6.24708e-153)}
; Y = -1.6243294287996443703292470672749914228916168212890625p-256 {- 2811729782898513 -256 (-1.4028e-077)}
; 1.3087441229212630755540658356039784848690032958984375p-506 > -1.6243294287996443703292470672749914228916168212890625p-256 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000000101 #b0100111100001001110110101101011011000111011011100111)))
(assert (= y (fp #b1 #b01011111111 #b1001111111010100000011011010111010011111111101010001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
