(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2036777843008417132608656174852512776851654052734375p-924 {- 917283193480919 -924 (-8.48778e-279)}
; Y = 1.605295798572458298991705305525101721286773681640625p133 {+ 2726009932899850 133 (1.74801e+040)}
; -1.2036777843008417132608656174852512776851654052734375p-924 > 1.605295798572458298991705305525101721286773681640625p133 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001100011 #b0011010000100100001110100010111001111110011011010111)))
(assert (= y (fp #b0 #b10010000100 #b1001101011110100101010100101101101000110011000001010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
