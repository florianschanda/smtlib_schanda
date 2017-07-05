(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.377994441126740188252597363316453993320465087890625p-163 {- 1702335624206506 -163 (-1.17858e-049)}
; Y = 1.3971647356969327802289626561105251312255859375p-230 {+ 1788670955689408 -230 (8.09746e-070)}
; -1.377994441126740188252597363316453993320465087890625p-163 m 1.3971647356969327802289626561105251312255859375p-230 == -1.377994441126740188252597363316453993320465087890625p-163
; [HW: -1.377994441126740188252597363316453993320465087890625p-163] 

; mpf : - 1702335624206506 -163
; mpfd: - 1702335624206506 -163 (-1.17858e-049) class: Neg. norm. non-zero
; hwf : - 1702335624206506 -163 (-1.17858e-049) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101011100 #b0110000011000100001111100110001010110101100010101010)))
(assert (= y (fp #b0 #b01100011001 #b0110010110101100100101101000111011110001010111000000)))
(assert (= r (fp #b1 #b01101011100 #b0110000011000100001111100110001010110101100010101010)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
