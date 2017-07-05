(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.37631409092104917135657160542905330657958984375p352 {+ 1694767999646304 352 (1.26263e+106)}
; 1.37631409092104917135657160542905330657958984375p352 S == 1.1731641363939868671906197050702758133411407470703125p176
; [HW: 1.1731641363939868671906197050702758133411407470703125p176] 

; mpf : + 779861940137893 176
; mpfd: + 779861940137893 176 (1.12367e+053) class: Pos. norm. non-zero
; hwf : + 779861940137893 176 (1.12367e+053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101011111 #b0110000001010110000111101100100110000111101001100000)))
(assert (= r (fp #b0 #b10010101111 #b0010110001010100011111000001111010100110111110100101)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
