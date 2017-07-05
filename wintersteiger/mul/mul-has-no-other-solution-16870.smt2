(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6228483608323716058663421790697611868381500244140625p327 {+ 2805059645752993 327 (4.43697e+098)}
; Y = -1.07997417369881620885507800267077982425689697265625p-959 {- 360171658869252 -959 (-2.2164e-289)}
; 1.6228483608323716058663421790697611868381500244140625p327 * -1.07997417369881620885507800267077982425689697265625p-959 == -1.752634317528418694820402379264123737812042236328125p-632
; [HW: -1.752634317528418694820402379264123737812042236328125p-632] 

; mpf : - 3389563631967234 -632
; mpfd: - 3389563631967234 -632 (-9.83409e-191) class: Neg. norm. non-zero
; hwf : - 3389563631967234 -632 (-9.83409e-191) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101000110 #b1001111101110010111111010111110000100100011010100001)))
(assert (= y (fp #b1 #b00001000000 #b0001010001111001001011111111110010001111101000000100)))
(assert (= r (fp #b1 #b00110000111 #b1100000010101100101001001000001110100001110000000010)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
