(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9631560547797770599487421350204385817050933837890625p914 {+ 4337669249405841 914 (2.71876e+275)}
; Y = 1.022712287870082281671102464315481483936309814453125p-871 {+ 102287051188434 -871 (6.49572e-263)}
; 1.9631560547797770599487421350204385817050933837890625p914 < 1.022712287870082281671102464315481483936309814453125p-871 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110010001 #b1111011010010001011001010010110000111001001110010001)))
(assert (= y (fp #b0 #b00010011000 #b0000010111010000011110001111010110011110100011010010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
