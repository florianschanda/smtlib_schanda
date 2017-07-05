(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5492486734944785897738483981811441481113433837890625p-952 {+ 2473596121283473 -952 (4.06973e-287)}
; Y = -1.214408305104898833093329812982119619846343994140625p890 {- 965609162975562 890 (-1.00245e+268)}
; 1.5492486734944785897738483981811441481113433837890625p-952 = -1.214408305104898833093329812982119619846343994140625p890 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001000111 #b1000110010011011100011111010001000000111101110010001)))
(assert (= y (fp #b1 #b11101111001 #b0011011011100011011101100111001001101010100101001010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
