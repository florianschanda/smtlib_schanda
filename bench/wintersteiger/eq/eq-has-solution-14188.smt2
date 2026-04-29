(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.706566227396226764767561689950525760650634765625p-684 {+ 3182091398414224 -684 (2.12621e-206)}
; Y = 1.7308030572949728576048755712690763175487518310546875p-237 {+ 3291244376514859 -237 (7.8368e-072)}
; 1.706566227396226764767561689950525760650634765625p-684 = 1.7308030572949728576048755712690763175487518310546875p-237 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101010011 #b1011010011100001100001100011011100011111111110010000)))
(assert (= y (fp #b0 #b01100010010 #b1011101100010101111010001011111011100110000100101011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
