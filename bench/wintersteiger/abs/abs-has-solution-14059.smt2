(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3075842541305269239870767705724574625492095947265625p774 {+ 1385236332287273 774 (1.29923e+233)}
; 1.3075842541305269239870767705724574625492095947265625p774 | == 1.3075842541305269239870767705724574625492095947265625p774
; [HW: 1.3075842541305269239870767705724574625492095947265625p774] 

; mpf : + 1385236332287273 774
; mpfd: + 1385236332287273 774 (1.29923e+233) class: Pos. norm. non-zero
; hwf : + 1385236332287273 774 (1.29923e+233) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100000101 #b0100111010111101110101110111100001000001010100101001)))
(assert (= r (fp #b0 #b11100000101 #b0100111010111101110101110111100001000001010100101001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
