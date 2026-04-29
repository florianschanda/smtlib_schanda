(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4956259837985867999776701253722421824932098388671875p-905 {- 2232100995950451 -905 (-5.52939e-273)}
; Y = -1.6626893861975686750298564220429398119449615478515625p-946 {- 2984487672741753 -946 (-2.79534e-285)}
; -1.4956259837985867999776701253722421824932098388671875p-905 < -1.6626893861975686750298564220429398119449615478515625p-946 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001110110 #b0111111011100001010110000010111101110110011101110011)))
(assert (= y (fp #b1 #b00001001101 #b1010100110100110000000101111100100011111111101111001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
