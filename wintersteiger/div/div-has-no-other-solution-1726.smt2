(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.89109310075577408127855960628949105739593505859375p446 {+ 4013126556516124 446 (3.4363e+134)}
; Y = 1.92569401933513262292763101868331432342529296875p389 {+ 4168955240536800 389 (2.42804e+117)}
; 1.89109310075577408127855960628949105739593505859375p446 / 1.92569401933513262292763101868331432342529296875p389 == 1.964063949690922239454948794445954263210296630859375p56
; [HW: 1.964063949690922239454948794445954263210296630859375p56] 

; mpf : + 4341758044589366 56
; mpfd: + 4341758044589366 56 (1.41526e+017) class: Pos. norm. non-zero
; hwf : + 4341758044589366 56 (1.41526e+017) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110111101 #b1110010000011110101011010110110101101111111100011100)))
(assert (= y (fp #b0 #b10110000100 #b1110110011111010010010001000001100100101101011100000)))
(assert (= r (fp #b0 #b10000110111 #b1111011011001100111001010001111100101100110100110110)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
