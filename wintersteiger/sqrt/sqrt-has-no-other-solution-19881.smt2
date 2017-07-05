(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6438841019548495747670813216245733201503753662109375p-185 {+ 2899796201633647 -185 (3.35214e-056)}
; 1.6438841019548495747670813216245733201503753662109375p-185 S == 1.8132203958453860792587875039316713809967041015625p-93
; [HW: 1.8132203958453860792587875039316713809967041015625p-93] 

; mpf : + 3662419071699368 -93
; mpfd: + 3662419071699368 -93 (1.83088e-028) class: Pos. norm. non-zero
; hwf : + 3662419071699368 -93 (1.83088e-028) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101000110 #b1010010011010101100101101010100001001111011101101111)))
(assert (= r (fp #b0 #b01110100010 #b1101000000101111001101100011110010011000100110101000)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
