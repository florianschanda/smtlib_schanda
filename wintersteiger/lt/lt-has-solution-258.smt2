(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.243591130296891833495465107262134552001953125p583 {+ 1097036923635840 583 (3.937e+175)}
; Y = -1.76166981397752220317443061503581702709197998046875p490 {- 3430255890408524 490 (-5.63148e+147)}
; 1.243591130296891833495465107262134552001953125p583 < -1.76166981397752220317443061503581702709197998046875p490 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001000110 #b0011111001011011111111010000001000111000100010000000)))
(assert (= y (fp #b1 #b10111101001 #b1100001011111100110010101111110101100010010001001100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
