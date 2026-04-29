(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.53694871140215472138379482203163206577301025390625p13 {- 2418202016587812 13 (-12590.7)}
; Y = 1.61593758372977003290316133643500506877899169921875p950 {+ 2773936272568876 950 (1.53787e+286)}
; -1.53694871140215472138379482203163206577301025390625p13 < 1.61593758372977003290316133643500506877899169921875p950 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000001100 #b1000100101110101011110001000001100011010000000100100)))
(assert (= y (fp #b0 #b11110110101 #b1001110110101110000101011110001001111111001000101100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
