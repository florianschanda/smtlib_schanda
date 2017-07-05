(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.53587533194149639115266836597584187984466552734375p955 {- 2413367945248764 955 (-4.67737e+287)}
; Y = -1.130178858641869510393007658421993255615234375p-745 {- 586273459271040 -745 (-6.10661e-225)}
; -1.53587533194149639115266836597584187984466552734375p955 < -1.130178858641869510393007658421993255615234375p-745 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110111010 #b1000100100101111001000000011000101101011111111111100)))
(assert (= y (fp #b1 #b00100010110 #b0010000101010011011001101101010001111111010110000000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
