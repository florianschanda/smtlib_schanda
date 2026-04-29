(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.55394764108209759712053710245527327060699462890625p60 {- 2494758389960100 60 (-1.79158e+018)}
; Y = 1.9534575924956258941023179431795142590999603271484375p-789 {+ 4293991258276871 -789 (5.99981e-238)}
; -1.55394764108209759712053710245527327060699462890625p60 = 1.9534575924956258941023179431795142590999603271484375p-789 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111011 #b1000110111001111100000110011101000100100110110100100)))
(assert (= y (fp #b0 #b00011101010 #b1111010000010101110010111111100111100100010000000111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
