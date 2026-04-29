(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5694167535850598316216064631589688360691070556640625p-907 {- 2564425079264193 -907 (-1.45055e-273)}
; Y = 1.09018797452727067565092511358670890331268310546875p726 {+ 406170528474316 726 (3.84838e+218)}
; -1.5694167535850598316216064631589688360691070556640625p-907 > 1.09018797452727067565092511358670890331268310546875p726 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001110100 #b1001000111000101010010111101111001110001001111000001)))
(assert (= y (fp #b0 #b11011010101 #b0001011100010110100011110010000100010110010011001100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
