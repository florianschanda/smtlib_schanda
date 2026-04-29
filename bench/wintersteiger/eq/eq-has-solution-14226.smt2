(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.37594891022997245499936980195343494415283203125p-919 {+ 1693123372022048 -919 (3.10482e-277)}
; Y = -1.87956615717947617127947523840703070163726806640625p-553 {- 3961213817721188 -553 (-6.37485e-167)}
; 1.37594891022997245499936980195343494415283203125p-919 = -1.87956615717947617127947523840703070163726806640625p-553 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001101000 #b0110000000111110001100000001001001100111100100100000)))
(assert (= y (fp #b1 #b00111010110 #b1110000100101011001111110110011111000001000101100100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
