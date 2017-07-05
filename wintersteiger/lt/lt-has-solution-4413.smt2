(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5518240656375026365054736743331886827945709228515625p-163 {- 2485194656379129 -163 (-1.32725e-049)}
; Y = -1.30364119305273362670050119049847126007080078125p-798 {- 1367478363886624 -798 (-7.82027e-241)}
; -1.5518240656375026365054736743331886827945709228515625p-163 < -1.30364119305273362670050119049847126007080078125p-798 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101011100 #b1000110101000100010101111000101100001111000011111001)))
(assert (= y (fp #b1 #b00011100001 #b0100110110111011011011011110000111100001010000100000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
