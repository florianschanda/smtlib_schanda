(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.278711301861800375689881548169068992137908935546875p188 {+ 1255204115208750 188 (5.01663e+056)}
; Y = 1.99906571974258806534407995059154927730560302734375p-193 {+ 4499392003151356 -193 (1.59235e-058)}
; 1.278711301861800375689881548169068992137908935546875p188 + 1.99906571974258806534407995059154927730560302734375p-193 == 1.2787113018618005977344864732003770768642425537109375p188
; [HW: 1.2787113018618005977344864732003770768642425537109375p188] 

; mpf : + 1255204115208751 188
; mpfd: + 1255204115208751 188 (5.01663e+056) class: Pos. norm. non-zero
; hwf : + 1255204115208751 188 (5.01663e+056) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010111011 #b0100011101011001100111111011011010000101101000101110)))
(assert (= y (fp #b0 #b01100111110 #b1111111111000010110001010110000011011001010111111100)))
(assert (= r (fp #b0 #b10010111011 #b0100011101011001100111111011011010000101101000101111)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
