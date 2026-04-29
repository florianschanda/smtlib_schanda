(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.907317155192004065611399710178375244140625p697 {- 4086193202029568 697 (-1.25409e+210)}
; Y = -1.4408711845309358778877140139229595661163330078125p-515 {- 1985507302371912 -515 (-1.34331e-155)}
; -1.907317155192004065611399710178375244140625p697 % -1.4408711845309358778877140139229595661163330078125p-515 == -1.92927158377337804040507762692868709564208984375p-516
; [HW: -1.92927158377337804040507762692868709564208984375p-516] 

; mpf : - 4185067158407776 -516
; mpfd: - 4185067158407776 -516 (-8.99323e-156) class: Neg. norm. non-zero
; hwf : - 4185067158407776 -516 (-8.99323e-156) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010111000 #b1110100001000101111011111110010010100110010000000000)))
(assert (= y (fp #b1 #b00111111100 #b0111000011011100111011110001011101001111001001001000)))
(assert (= r (fp #b0 #b00111111010 #xe7aa40326b460)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
