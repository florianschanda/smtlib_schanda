(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.13205278193607750125693200970999896526336669921875p508 {- 594712859520556 508 (-9.48647e+152)}
; Y = -1.485906520460780644299347841297276318073272705078125p928 {- 2188328424484066 928 (-3.37153e+279)}
; -1.13205278193607750125693200970999896526336669921875p508 < -1.485906520460780644299347841297276318073272705078125p928 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111111011 #b0010000111001110001101100000101111000010111000101100)))
(assert (= y (fp #b1 #b11110011111 #b0111110001100100010111101010011001001010110011100010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
