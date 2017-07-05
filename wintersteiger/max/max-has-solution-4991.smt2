(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.986544084947699406740184713271446526050567626953125p-364 {+ 4442999573355026 -364 (5.28664e-110)}
; Y = -1.11506762058204689225249239825643599033355712890625p-368 {- 518218493175716 -368 (-1.85465e-111)}
; 1.986544084947699406740184713271446526050567626953125p-364 M -1.11506762058204689225249239825643599033355712890625p-368 == 1.986544084947699406740184713271446526050567626953125p-364
; [HW: 1.986544084947699406740184713271446526050567626953125p-364] 

; mpf : + 4442999573355026 -364
; mpfd: + 4442999573355026 -364 (5.28664e-110) class: Pos. norm. non-zero
; hwf : + 4442999573355026 -364 (5.28664e-110) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010010011 #b1111110010001110001001110011010011101001101000010010)))
(assert (= y (fp #b1 #b01010001111 #b0001110101110101000100100101001100111010011110100100)))
(assert (= r (fp #b0 #b01010010011 #b1111110010001110001001110011010011101001101000010010)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
