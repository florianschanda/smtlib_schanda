(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2269986997494743974357334082014858722686767578125p-1012 {+ 1022311259605320 -1012 (2.79569e-305)}
; 1.2269986997494743974357334082014858722686767578125p-1012 S == 1.1076997335692890800373788806609809398651123046875p-506
; [HW: 1.1076997335692890800373788806609809398651123046875p-506] 

; mpf : + 485036479970552 -506
; mpfd: + 485036479970552 -506 (5.28743e-153) class: Pos. norm. non-zero
; hwf : + 485036479970552 -506 (5.28743e-153) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000001011 #b0011101000011100100101100011011110101000100101001000)))
(assert (= r (fp #b0 #b01000000101 #b0001101110010010001101011011000101110111110011111000)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
