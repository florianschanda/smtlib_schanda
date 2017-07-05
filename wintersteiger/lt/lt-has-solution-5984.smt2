(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.622583361348414854319344158284366130828857421875p363 {- 2803866194175792 363 (-3.04856e+109)}
; Y = -1.45624121951331186863853872637264430522918701171875p-478 {- 2054727786191212 -478 (-1.86593e-144)}
; -1.622583361348414854319344158284366130828857421875p363 < -1.45624121951331186863853872637264430522918701171875p-478 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101101010 #b1001111101100001100111111000100000000110011100110000)))
(assert (= y (fp #b1 #b01000100001 #b0111010011001100001110010111110011100101100101101100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
