(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8311902229105398998143527933279983699321746826171875p-47 {+ 3743347978173907 -47 (1.30114e-014)}
; Y = -1.7689602154276735657134622670128010213375091552734375p-586 {- 3463088939662807 -586 (-6.98458e-177)}
; 1.8311902229105398998143527933279983699321746826171875p-47 < -1.7689602154276735657134622670128010213375091552734375p-586 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111010000 #b1101010011001000111000011110100000100111110111010011)))
(assert (= y (fp #b1 #b00110110101 #b1100010011011010100100111010000100101111110111010111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
