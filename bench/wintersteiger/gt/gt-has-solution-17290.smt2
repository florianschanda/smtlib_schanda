(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.59970711127166698162227476132102310657501220703125p738 {+ 2700840722854516 738 (2.31301e+222)}
; Y = 1.070491982210657777585538497078232467174530029296875p-26 {+ 317467664816526 -26 (1.59516e-008)}
; 1.59970711127166698162227476132102310657501220703125p738 > 1.070491982210657777585538497078232467174530029296875p-26 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011100001 #b1001100110000110011001111011111000010111001001110100)))
(assert (= y (fp #b0 #b01111100101 #b0001001000001011110000110011011000111001100110001110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
