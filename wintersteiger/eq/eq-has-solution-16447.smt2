(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2864373243672904134626833183574490249156951904296875p-585 {+ 1289999027285531 -585 (1.01588e-176)}
; Y = -1.7848685944639643974340970089542679488658905029296875p488 {- 3534733909562715 488 (-1.42641e+147)}
; 1.2864373243672904134626833183574490249156951904296875p-585 = -1.7848685944639643974340970089542679488658905029296875p488 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110110110 #b0100100101010011111101001101110010000010111000011011)))
(assert (= y (fp #b1 #b10111100111 #b1100100011101101001001011111000011100001010101011011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
