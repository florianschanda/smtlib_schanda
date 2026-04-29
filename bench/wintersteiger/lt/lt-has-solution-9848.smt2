(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5176288577534584600670086729223839938640594482421875p1004 {+ 2331193130894691 1004 (2.60184e+302)}
; Y = -1.8289315089987063789322974116657860577106475830078125p-246 {- 3733175635042237 -246 (-1.6174e-074)}
; 1.5176288577534584600670086729223839938640594482421875p1004 < -1.8289315089987063789322974116657860577106475830078125p-246 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111101011 #b1000010010000011010100110010011110000100010101100011)))
(assert (= y (fp #b1 #b01100001001 #b1101010000110100110110101111100111000101111110111101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
