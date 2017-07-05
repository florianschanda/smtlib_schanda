(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.280289188745813877545742798247374594211578369140625p468 {+ 1262310285991626 468 (9.75767e+140)}
; Y = -1.5975336380931757229717504742438904941082000732421875p-926 {- 2691052269857763 -926 (-2.81627e-279)}
; 1.280289188745813877545742798247374594211578369140625p468 = -1.5975336380931757229717504742438904941082000732421875p-926 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111010011 #b0100011111000001000010000100001100010101111011001010)))
(assert (= y (fp #b1 #b00001100001 #b1001100011110111111101101110100111011110101111100011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
