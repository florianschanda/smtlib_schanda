(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8935511788415462230972252655192278325557708740234375p-945 {+ 4024196756067255 -945 (6.36695e-285)}
; Y = -1.752881220773435444471033406443893909454345703125p738 {- 3390675585329488 738 (-2.53448e+222)}
; 1.8935511788415462230972252655192278325557708740234375p-945 > -1.752881220773435444471033406443893909454345703125p738 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001001110 #b1110010010111111110001010010001001101101001110110111)))
(assert (= y (fp #b1 #b11011100001 #b1100000010111100110100101101110011111110100101010000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
