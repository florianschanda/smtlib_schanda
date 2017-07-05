(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6688517258494026673787402614834718406200408935546875p-314 {- 3012240383301483 -314 (-5.00034e-095)}
; Y = -1.1610423951719581747710208219359628856182098388671875p-138 {- 725270470887283 -138 (-3.33203e-042)}
; -1.6688517258494026673787402614834718406200408935546875p-314 < -1.1610423951719581747710208219359628856182098388671875p-138 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011000101 #b1010101100111001110111011110000001100101011101101011)))
(assert (= y (fp #b1 #b01101110101 #b0010100100111010000100110000110010001000011101110011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
