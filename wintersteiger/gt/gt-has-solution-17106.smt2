(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0095648690609124731309975686599500477313995361328125p-962 {+ 43076340738573 -962 (2.58987e-290)}
; Y = -1.038792268116235817387860151939094066619873046875p-369 {- 174704844233136 -369 (-8.63894e-112)}
; 1.0095648690609124731309975686599500477313995361328125p-962 > -1.038792268116235817387860151939094066619873046875p-369 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000111101 #b0000001001110010110101111101111111001110101000001101)))
(assert (= y (fp #b1 #b01010001110 #b0000100111101110010010100100001011100101100110110000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
