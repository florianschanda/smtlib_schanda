(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3116973380592467091076969154528342187404632568359375p237 {+ 1403760015535999 237 (2.89696e+071)}
; Y = -1.781023326225142699996695228037424385547637939453125p-774 {- 3517416360955218 -774 (-1.79247e-233)}
; 1.3116973380592467091076969154528342187404632568359375p237 M -1.781023326225142699996695228037424385547637939453125p-774 == 1.3116973380592467091076969154528342187404632568359375p237
; [HW: 1.3116973380592467091076969154528342187404632568359375p237] 

; mpf : + 1403760015535999 237
; mpfd: + 1403760015535999 237 (2.89696e+071) class: Pos. norm. non-zero
; hwf : + 1403760015535999 237 (2.89696e+071) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011101100 #b0100111111001011011001011001000100110110111101111111)))
(assert (= y (fp #b1 #b00011111001 #b1100011111110001001001010000101110001100110101010010)))
(assert (= r (fp #b0 #b10011101100 #b0100111111001011011001011001000100110110111101111111)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
