(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.02274063626877609323173601296730339527130126953125p-917 {+ 102414721026228 -917 (9.23123e-277)}
; Y = -1.6780994354495313292119362813537009060382843017578125p72 {- 3053888364810653 72 (-7.9246e+021)}
; 1.02274063626877609323173601296730339527130126953125p-917 < -1.6780994354495313292119362813537009060382843017578125p72 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001101010 #b0000010111010010010101001001000100010000100010110100)))
(assert (= y (fp #b1 #b10001000111 #b1010110110010111111011001011001010110001000110011101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
