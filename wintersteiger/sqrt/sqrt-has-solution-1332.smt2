(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5689820099157787414156928207376040518283843994140625p410 {+ 2562467167837217 410 (4.14874e+123)}
; 1.5689820099157787414156928207376040518283843994140625p410 S == 1.25259012047667805944684005226008594036102294921875p205
; [HW: 1.25259012047667805944684005226008594036102294921875p205] 

; mpf : + 1137564772456236 205
; mpfd: + 1137564772456236 205 (6.44107e+061) class: Pos. norm. non-zero
; hwf : + 1137564772456236 205 (6.44107e+061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110011001 #b1001000110101000110011100001010010011001110000100001)))
(assert (= r (fp #b0 #b10011001100 #b0100000010101001101111110000001010111101011100101100)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
