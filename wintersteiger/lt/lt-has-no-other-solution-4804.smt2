(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7003050453921819684666161265340633690357208251953125p170 {+ 3153893541473909 170 (2.54464e+051)}
; Y = -1.6013774050006845950377964982180856168270111083984375p-350 {- 2708363057070119 -350 (-6.98225e-106)}
; 1.7003050453921819684666161265340633690357208251953125p170 < -1.6013774050006845950377964982180856168270111083984375p-350 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010101001 #b1011001101000111001100010000001100101110111001110101)))
(assert (= y (fp #b1 #b01010100001 #b1001100111110011110111101001111100001000000000100111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
