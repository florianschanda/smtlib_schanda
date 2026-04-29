(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.15708713373860927475789139862172305583953857421875p-238 {- 707457556969900 -238 (-2.61955e-072)}
; Y = -1.50723612753712199463507204200141131877899169921875p573 {- 2284388434965036 573 (-4.65982e+172)}
; -1.15708713373860927475789139862172305583953857421875p-238 > -1.50723612753712199463507204200141131877899169921875p573 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100010001 #b0010100000110110110111001100011000000111100110101100)))
(assert (= y (fp #b1 #b11000111100 #b1000000111011010001110100001001100011111001000101100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
