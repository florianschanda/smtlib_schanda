(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0486947502035242063556097491527907550334930419921875p207 {- 219301658871491 207 (-2.15704e+062)}
; Y = 1.3005588011732405195886030924157239496707916259765625p-96 {+ 1353596504966729 -96 (1.64154e-029)}
; -1.0486947502035242063556097491527907550334930419921875p207 < 1.3005588011732405195886030924157239496707916259765625p-96 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011001110 #b0000110001110111010000100101011110011100011011000011)))
(assert (= y (fp #b0 #b01110011111 #b0100110011110001011010111110110110010000011001001001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
