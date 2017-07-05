(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.22572742668504819363306523882783949375152587890625p-352 {+ 1016585954706084 -352 (1.33609e-106)}
; Y = 1.64955049527573027745575018343515694141387939453125p-913 {+ 2925315368482100 -913 (2.38221e-275)}
; 1.22572742668504819363306523882783949375152587890625p-352 m 1.64955049527573027745575018343515694141387939453125p-913 == 1.64955049527573027745575018343515694141387939453125p-913
; [HW: 1.64955049527573027745575018343515694141387939453125p-913] 

; mpf : + 2925315368482100 -913
; mpfd: + 2925315368482100 -913 (2.38221e-275) class: Pos. norm. non-zero
; hwf : + 2925315368482100 -913 (2.38221e-275) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010011111 #b0011100111001001010001011100101101101100001010100100)))
(assert (= y (fp #b0 #b00001101110 #b1010011001001000111100001111011001001111010100110100)))
(assert (= r (fp #b0 #b00001101110 #b1010011001001000111100001111011001001111010100110100)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
