(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9521873381129466462624577616224996745586395263671875p-510 {+ 4288270541112371 -510 (5.82403e-154)}
; Y = -1.042605846972681771234192638075910508632659912109375p-430 {- 191879676549974 -430 (-3.7603e-130)}
; 1.9521873381129466462624577616224996745586395263671875p-510 - -1.042605846972681771234192638075910508632659912109375p-430 == 1.042605846972681771234192638075910508632659912109375p-430
; [HW: 1.042605846972681771234192638075910508632659912109375p-430] 

; mpf : + 191879676549974 -430
; mpfd: + 191879676549974 -430 (3.7603e-130) class: Pos. norm. non-zero
; hwf : + 191879676549974 -430 (3.7603e-130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000000001 #b1111001111000010100011001010010011011100010000110011)))
(assert (= y (fp #b1 #b01001010001 #b0000101011101000001101110111111101011101101101010110)))
(assert (= r (fp #b0 #b01001010001 #b0000101011101000001101110111111101011101101101010110)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
