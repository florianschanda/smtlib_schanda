(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7781522469308617129257754641002975404262542724609375p226 {+ 3504486169315343 226 (1.91756e+068)}
; Y = -1.0863118370362567777220874631893821060657501220703125p976 {- 388713957114149 976 (-6.93794e+293)}
; 1.7781522469308617129257754641002975404262542724609375p226 > -1.0863118370362567777220874631893821060657501220703125p976 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011100001 #b1100011100110100111111000101001111100000100000001111)))
(assert (= y (fp #b1 #b11111001111 #b0001011000011000100010000101010101010100000100100101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
