(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.65984663343957894454661072813905775547027587890625p-884 {+ 2971685052480164 -884 (1.28692e-266)}
; Y = -1.551512735141321375209599864319898188114166259765625p497 {- 2483792548472538 497 (-6.34838e+149)}
; Z = -zero {- 0 -1023 (-0)}
; 1.65984663343957894454661072813905775547027587890625p-884 x -1.551512735141321375209599864319898188114166259765625p497 -zero == -1.2876365950814776528687843892839737236499786376953125p-386
; [HW: -1.2876365950814776528687843892839737236499786376953125p-386] 

; mpf : - 1295400062427061 -386
; mpfd: - 1295400062427061 -386 (-8.16987e-117) class: Neg. norm. non-zero
; hwf : - 1295400062427061 -386 (-8.16987e-117) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010001011 #b1010100011101011101101010111111011111111101010100100)))
(assert (= y (fp #b1 #b10111110000 #b1000110100101111111100000100100011000010011011011010)))
(assert (= z (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b01001111101 #b0100100110100010100011010100100100000001111110110101)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
