(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.646099659381867308383107229019515216350555419921875p-234 {+ 2909774185236382 -234 (5.96262e-071)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.646099659381867308383107229019515216350555419921875p-234 < -oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100010101 #b1010010101100110110010011000101100000000011110011110)))
(assert (= y (_ -oo 11 53)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
