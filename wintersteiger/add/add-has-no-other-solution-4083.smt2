(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.850531858138231289245823063538409769535064697265625p-218 {- 3830454959378074 -218 (-4.39296e-066)}
; Y = -1.2263021655155572631201721378602087497711181640625p795 {- 1019174348289000 795 (-2.55531e+239)}
; -1.850531858138231289245823063538409769535064697265625p-218 + -1.2263021655155572631201721378602087497711181640625p795 == -1.2263021655155574851647770628915168344974517822265625p795
; [HW: -1.2263021655155574851647770628915168344974517822265625p795] 

; mpf : - 1019174348289001 795
; mpfd: - 1019174348289001 795 (-2.55531e+239) class: Neg. norm. non-zero
; hwf : - 1019174348289001 795 (-2.55531e+239) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100100101 #b1101100110111100011101001011001011101000111010011010)))
(assert (= y (fp #b1 #b11100011010 #b0011100111101110111100000100111111100111001111101000)))
(assert (= r (fp #b1 #b11100011010 #b0011100111101110111100000100111111100111001111101001)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
