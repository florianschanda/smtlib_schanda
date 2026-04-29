(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9897122181351607483890120420255698263645172119140625p-878 {+ 4457267576797537 -878 (9.87311e-265)}
; 1.9897122181351607483890120420255698263645172119140625p-878 S == 1.410571592701044263407084145001135766506195068359375p-439
; [HW: 1.410571592701044263407084145001135766506195068359375p-439] 

; mpf : + 1849050071897334 -439
; mpfd: + 1849050071897334 -439 (9.93635e-133) class: Pos. norm. non-zero
; hwf : + 1849050071897334 -439 (9.93635e-133) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010010001 #b1111110101011101110001111010100101010111100101100001)))
(assert (= r (fp #b0 #b01001001000 #b0110100100011011001110000100101101010001010011110110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
