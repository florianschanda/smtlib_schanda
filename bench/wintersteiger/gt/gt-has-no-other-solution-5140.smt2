(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7923498914290252326253494175034575164318084716796875p1016 {- 3568426675786811 1016 (-1.25863e+306)}
; Y = -1.204198614283610968556104126037098467350006103515625p890 {- 919628803197242 890 (-9.94018e+267)}
; -1.7923498914290252326253494175034575164318084716796875p1016 > -1.204198614283610968556104126037098467350006103515625p890 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111110111 #b1100101011010111011100010100011010101101010000111011)))
(assert (= y (fp #b1 #b11101111001 #b0011010001000110010111000100001000111100100100111010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
