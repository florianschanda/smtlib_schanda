(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.673438225947671664783911182894371449947357177734375p-321 {+ 3032896143434982 -321 (3.91725e-097)}
; Y = -1.4112877902203859736829372195643372833728790283203125p30 {- 1852275538778565 30 (-1.51536e+009)}
; 1.673438225947671664783911182894371449947357177734375p-321 > -1.4112877902203859736829372195643372833728790283203125p30 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010111110 #b1010110001100110011100101001010001010010010011100110)))
(assert (= y (fp #b1 #b10000011101 #b0110100101001010001010000001100000111101100111000101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
