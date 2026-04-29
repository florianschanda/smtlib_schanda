(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8399091981080391011715846616425551474094390869140625p896 {+ 3782614751624417 896 (9.72014e+269)}
; Y = -1.00316730379419372098936946713365614414215087890625p-723 {- 14264268187300 -723 (-2.27346e-218)}
; 1.8399091981080391011715846616425551474094390869140625p896 < -1.00316730379419372098936946713365614414215087890625p-723 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101111111 #b1101011100000100010010100000100101111011110011100001)))
(assert (= y (fp #b1 #b00100101100 #b0000000011001111100100101000101000110110011010100100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
