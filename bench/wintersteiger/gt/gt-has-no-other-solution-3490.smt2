(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.30900298575780293930392872425727546215057373046875p-515 {+ 1391625731515212 -515 (1.22037e-155)}
; Y = 1.6770380582147346171240087642217986285686492919921875p-619 {+ 3049108346691523 -619 (7.7086e-187)}
; 1.30900298575780293930392872425727546215057373046875p-515 > 1.6770380582147346171240087642217986285686492919921875p-619 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111111100 #b0100111100011010110100011101011000110010001101001100)))
(assert (= y (fp #b0 #b00110010100 #b1010110101010010010111011011111000101101111111000011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
