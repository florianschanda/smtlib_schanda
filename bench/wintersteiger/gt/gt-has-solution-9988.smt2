(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.764821127019966962024000167730264365673065185546875p878 {+ 3444448142652206 878 (3.55662e+264)}
; Y = -1.48265477398244360784929085639305412769317626953125p-278 {- 2173683860255924 -278 (-3.05282e-084)}
; 1.764821127019966962024000167730264365673065185546875p878 > -1.48265477398244360784929085639305412769317626953125p-278 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101101101 #b1100001111001011010100010011111111010111001100101110)))
(assert (= y (fp #b1 #b01011101001 #b0111101110001111010000110110010110000011010010110100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
