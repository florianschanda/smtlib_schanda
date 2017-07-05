(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6620302371233679483708556290366686880588531494140625p-942 {+ 2981519129216801 -942 (4.47078e-284)}
; Y = -1.3368082100787972432698325064848177134990692138671875p378 {- 1516849329406195 378 (-8.23014e+113)}
; 1.6620302371233679483708556290366686880588531494140625p-942 > -1.3368082100787972432698325064848177134990692138671875p378 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001010001 #b1010100101111010110100000100100101101000011100100001)))
(assert (= y (fp #b1 #b10101111001 #b0101011000111001000100000001011101010000000011110011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
