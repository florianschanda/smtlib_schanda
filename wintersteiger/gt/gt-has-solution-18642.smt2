(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8737949593645011336917605149210430681705474853515625p142 {+ 3935222653392185 142 (1.04468e+043)}
; Y = -1.95026970997690884956909940228797495365142822265625p494 {- 4279634311753476 494 (-9.97499e+148)}
; 1.8737949593645011336917605149210430681705474853515625p142 > -1.95026970997690884956909940228797495365142822265625p494 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010001101 #b1101111110110001000001101100010111100001010100111001)))
(assert (= y (fp #b1 #b10111101101 #b1111001101000100111000000010111010111010111100000100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
