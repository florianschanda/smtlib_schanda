(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1114727148938214895679266192018985748291015625p-514 {- 502028477257792 -514 (-2.07244e-155)}
; Y = 1.5202707894727698345604949281550943851470947265625p631 {+ 2343091333601320 631 (1.35472e+190)}
; -1.1114727148938214895679266192018985748291015625p-514 + 1.5202707894727698345604949281550943851470947265625p631 == 1.5202707894727698345604949281550943851470947265625p631
; [HW: 1.5202707894727698345604949281550943851470947265625p631] 

; mpf : + 2343091333601320 631
; mpfd: + 2343091333601320 631 (1.35472e+190) class: Pos. norm. non-zero
; hwf : + 2343091333601320 631 (1.35472e+190) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111111101 #b0001110010001001011110011101000011011101100001000000)))
(assert (= y (fp #b0 #b11001110110 #b1000010100110000011101110110100111011001100000101000)))
(assert (= r (fp #b0 #b11001110110 #b1000010100110000011101110110100111011001100000101000)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
