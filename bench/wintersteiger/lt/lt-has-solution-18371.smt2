(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9245383631974897209460095837130211293697357177734375p207 {+ 4163750627985943 207 (3.95855e+062)}
; Y = -1.065625475408242817110249234247021377086639404296875p947 {- 295550866594574 947 (-1.26768e+285)}
; 1.9245383631974897209460095837130211293697357177734375p207 < -1.065625475408242817110249234247021377086639404296875p947 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011001110 #b1110110010101110100010111101000111010100101000010111)))
(assert (= y (fp #b1 #b11110110010 #b0001000011001100110101001100011010101001101100001110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
