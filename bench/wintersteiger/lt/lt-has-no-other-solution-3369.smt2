(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.33795745632125662183398162596859037876129150390625p62 {- 1522025074355492 62 (-6.17024e+018)}
; Y = 1.880428114109445658641561749391257762908935546875p-54 {+ 3965095726629808 -54 (1.04385e-016)}
; -1.33795745632125662183398162596859037876129150390625p62 < 1.880428114109445658641561749391257762908935546875p-54 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111101 #b0101011010000100011000010011111001010110110100100100)))
(assert (= y (fp #b0 #b01111001001 #b1110000101100011101111001010010010010100001110110000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
