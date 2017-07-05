(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6530851846725003184701563441194593906402587890625p-749 {+ 2941234194332264 -749 (5.5825e-226)}
; Y = 1.73795286765774914528037697891704738140106201171875p-876 {+ 3323444259800428 -876 (3.44954e-264)}
; 1.6530851846725003184701563441194593906402587890625p-749 = 1.73795286765774914528037697891704738140106201171875p-876 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100010010 #b1010011100110000100101110011010110101011101001101000)))
(assert (= y (fp #b0 #b00010010011 #b1011110011101010011110101010100010010100010101101100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
