(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4743402797005333848545660657691769301891326904296875p-598 {+ 2136238706906139 -598 (1.42122e-180)}
; Y = 1.94145877254591514571302468539215624332427978515625p-872 {+ 4239953377222468 -872 (6.16555e-263)}
; 1.4743402797005333848545660657691769301891326904296875p-598 > 1.94145877254591514571302468539215624332427978515625p-872 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110101001 #b0111100101101110010111010101010001111101010000011011)))
(assert (= y (fp #b0 #b00010010111 #b1111000100000011011100010010111010011101111101000100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
