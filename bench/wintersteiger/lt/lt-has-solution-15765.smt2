(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7613505371755333595018555570277385413646697998046875p1022 {+ 3428817995522059 1022 (7.91592e+307)}
; Y = -1.168984663469477158770359892514534294605255126953125p-649 {- 761039267432466 -649 (-5.00428e-196)}
; 1.7613505371755333595018555570277385413646697998046875p1022 < -1.168984663469477158770359892514534294605255126953125p-649 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111111101 #b1100001011100111110111100110100111110110000000001011)))
(assert (= y (fp #b1 #b00101110110 #b0010101101000010100101000011001100100000100000010010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
