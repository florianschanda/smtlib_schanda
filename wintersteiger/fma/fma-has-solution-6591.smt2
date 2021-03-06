(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.220140445578306920282329883775673806667327880859375p-643 {+ 991424428675638 -643 (3.34289e-194)}
; Y = 1.2401519239531932914388789868098683655261993408203125p-413 {+ 1081548115227909 -413 (5.86255e-125)}
; Z = 1.98140756754917646276226150803267955780029296875p-220 {+ 4419866755513056 -220 (1.17591e-066)}
; 1.220140445578306920282329883775673806667327880859375p-643 x 1.2401519239531932914388789868098683655261993408203125p-413 1.98140756754917646276226150803267955780029296875p-220 == 1.98140756754917646276226150803267955780029296875p-220
; [HW: 1.98140756754917646276226150803267955780029296875p-220] 

; mpf : + 4419866755513056 -220
; mpfd: + 4419866755513056 -220 (1.17591e-066) class: Pos. norm. non-zero
; hwf : + 4419866755513056 -220 (1.17591e-066) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101111100 #b0011100001011011000111111100111001001001001000110110)))
(assert (= y (fp #b0 #b01001100010 #b0011110101111010100110001011001101110011010100000101)))
(assert (= z (fp #b0 #b01100100011 #b1111101100111101100001101011111010101011101011100000)))
(assert (= r (fp #b0 #b01100100011 #b1111101100111101100001101011111010101011101011100000)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
