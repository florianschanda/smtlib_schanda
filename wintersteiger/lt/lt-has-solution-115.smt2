(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7326088210339005701854375729453749954700469970703125p446 {+ 3299376813416613 446 (3.14832e+134)}
; Y = -1.058332178060120920548570211394689977169036865234375p243 {- 262704775375270 243 (-1.49593e+073)}
; 1.7326088210339005701854375729453749954700469970703125p446 < -1.058332178060120920548570211394689977169036865234375p243 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110111101 #b1011101110001100010000000110111100011010000010100101)))
(assert (= y (fp #b1 #b10011110010 #b0000111011101110110110111000110100010010100110100110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
