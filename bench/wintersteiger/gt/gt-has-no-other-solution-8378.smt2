(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.705546958446749528093278058804571628570556640625p-661 {+ 3177501019153168 -661 (1.78253e-199)}
; Y = 1.306513275660851736148515556124038994312286376953125p996 {+ 1380413074050322 996 (8.74963e+299)}
; 1.705546958446749528093278058804571628570556640625p-661 > 1.306513275660851736148515556124038994312286376953125p996 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101101010 #b1011010010011110101110011011100001010010001100010000)))
(assert (= y (fp #b0 #b11111100011 #b0100111001110111101001110110111011000000110100010010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
