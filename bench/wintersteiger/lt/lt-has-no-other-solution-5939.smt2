(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7489629138747500025630188247305341064929962158203125p339 {- 3373029099840645 339 (-1.95862e+102)}
; Y = 1.8404052247758089233542477813898585736751556396484375p166 {+ 3784848657140551 166 (1.72144e+050)}
; -1.7489629138747500025630188247305341064929962158203125p339 < 1.8404052247758089233542477813898585736751556396484375p166 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101010010 #b1011111110111100000010001001010100000010010010000101)))
(assert (= y (fp #b0 #b10010100101 #b1101011100100100110010111111101111001100101101000111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
