(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6477248092551211033907065939274616539478302001953125p-276 {- 2917093209599989 -276 (-1.35708e-083)}
; Y = 1.5867856315269122102762366921524517238140106201171875p999 {+ 2642647551490963 999 (8.50127e+300)}
; -1.6477248092551211033907065939274616539478302001953125p-276 + 1.5867856315269122102762366921524517238140106201171875p999 == 1.586785631526911988231631767121143639087677001953125p999
; [HW: 1.586785631526911988231631767121143639087677001953125p999] 

; mpf : + 2642647551490962 999
; mpfd: + 2642647551490962 999 (8.50127e+300) class: Pos. norm. non-zero
; hwf : + 2642647551490962 999 (8.50127e+300) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011101011 #b1010010111010001010010110000100010001110111111110101)))
(assert (= y (fp #b0 #b11111100110 #b1001011000110111100101010100100100101011101110010011)))
(assert (= r (fp #b0 #b11111100110 #b1001011000110111100101010100100100101011101110010010)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
