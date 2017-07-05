(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.64804178915393872983941037091426551342010498046875p-571 {+ 2918520760154188 -571 (2.13226e-172)}
; Y = -1.3290423981056671554057402317994274199008941650390625p-1008 {- 1481875221497777 -1008 (-4.84511e-304)}
; 1.64804178915393872983941037091426551342010498046875p-571 < -1.3290423981056671554057402317994274199008941650390625p-1008 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111000100 #b1010010111100110000100010001001011011011100001001100)))
(assert (= y (fp #b1 #b00000001111 #b0101010000111100000111110110001011011100011110110001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
