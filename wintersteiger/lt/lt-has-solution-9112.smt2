(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8920782524071040331392623556894250214099884033203125p286 {- 4017563285125957 286 (-2.35244e+086)}
; Y = -1.2430156126714255737653047617641277611255645751953125p611 {- 1094445022672245 611 (-1.05634e+184)}
; -1.8920782524071040331392623556894250214099884033203125p286 < -1.2430156126714255737653047617641277611255645751953125p611 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100011101 #b1110010001011111001111011000011110001111101101000101)))
(assert (= y (fp #b1 #b11001100010 #b0011111000110110010001010110110011010111010101110101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
