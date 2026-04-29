(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2996226547727156575007256833487190306186676025390625p-214 {+ 1349380476386161 -214 (4.93626e-065)}
; Y = 1.6667661768684183254407571439514867961406707763671875p305 {+ 3002847905687859 305 (1.08648e+092)}
; 1.2996226547727156575007256833487190306186676025390625p-214 > 1.6667661768684183254407571439514867961406707763671875p305 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100101001 #b0100110010110100000100011111111101100011101101110001)))
(assert (= y (fp #b0 #b10100110000 #b1010101010110001001100000010101110111010100100110011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
