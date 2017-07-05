(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7080576194004912782276051075314171612262725830078125p677 {+ 3188808030888893 677 (1.07105e+204)}
; Y = -1.666787935593539327072676314855925738811492919921875p284 {- 3002945898274206 284 (-5.18083e+085)}
; 1.7080576194004912782276051075314171612262725830078125p677 > -1.666787935593539327072676314855925738811492919921875p284 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010100100 #b1011010101000011010000111001111100000010001110111101)))
(assert (= y (fp #b1 #b10100011011 #b1010101010110010100111010011100010111101110110011110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
