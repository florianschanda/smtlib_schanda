(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0167296824257416876235993186128325760364532470703125p980 {+ 75343791538597 980 (1.03897e+295)}
; Y = -1.689979310050382377283995083416812121868133544921875p9 {- 3107390563636254 9 (-865.269)}
; 1.0167296824257416876235993186128325760364532470703125p980 = -1.689979310050382377283995083416812121868133544921875p9 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111010011 #b0000010001001000011001010111111011100100000110100101)))
(assert (= y (fp #b1 #b10000001000 #b1011000010100010011110111110101110010101010000011110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
