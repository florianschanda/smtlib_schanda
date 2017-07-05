(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5613298950987302138315726551809348165988922119140625p-619 {+ 2528005106398561 -619 (7.17674e-187)}
; Y = -1.4136434439404734764167415050906129181385040283203125p-471 {- 1862884459994565 -471 (-2.31853e-142)}
; 1.5613298950987302138315726551809348165988922119140625p-619 > -1.4136434439404734764167415050906129181385040283203125p-471 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110010100 #b1000111110110011010100001110010110110111010101100001)))
(assert (= y (fp #b1 #b01000101000 #b0110100111100100100010010110011111101101110111000101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
