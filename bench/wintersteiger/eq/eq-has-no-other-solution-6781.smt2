(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8735797553278177307589658084907568991184234619140625p106 {+ 3934253460572769 106 (1.52003e+032)}
; Y = 1.7198465319300908493715951408375985920429229736328125p-546 {+ 3241900572964301 -546 (7.46641e-165)}
; 1.8735797553278177307589658084907568991184234619140625p106 = 1.7198465319300908493715951408375985920429229736328125p-546 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001101001 #b1101111110100010111011000011111110010100101001100001)))
(assert (= y (fp #b0 #b00111011101 #b1011100001000111110111001100000011000111010111001101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
