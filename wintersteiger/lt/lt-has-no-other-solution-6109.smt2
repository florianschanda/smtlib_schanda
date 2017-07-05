(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4405348428086968137762369224219582974910736083984375p-355 {+ 1983992553916967 -355 (1.9628e-107)}
; Y = -1.40259401496606894710339474841021001338958740234375p851 {- 1813122255782780 851 (-2.106e+256)}
; 1.4405348428086968137762369224219582974910736083984375p-355 < -1.40259401496606894710339474841021001338958740234375p851 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010011100 #b0111000011000110111001000011011010011100101000100111)))
(assert (= y (fp #b1 #b11101010010 #b0110011100010000011001101011111111011000001101111100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
