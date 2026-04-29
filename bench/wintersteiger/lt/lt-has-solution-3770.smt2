(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4411913213164784242081850607064552605152130126953125p601 {+ 1986949070279989 601 (1.19605e+181)}
; Y = -1.4363696394565277358879029634408652782440185546875p-937 {- 1965234145652216 -937 (-1.2364e-282)}
; 1.4411913213164784242081850607064552605152130126953125p601 < -1.4363696394565277358879029634408652782440185546875p-937 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001011000 #b0111000011110001111010100001100001010101010100110101)))
(assert (= y (fp #b1 #b00001010110 #b0110111110110101111010111011001001101110110111111000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
