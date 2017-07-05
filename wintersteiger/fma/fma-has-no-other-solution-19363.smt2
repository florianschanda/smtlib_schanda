(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7616503927512052740667058969847857952117919921875p749 {+ 3430168424980920 749 (5.21659e+225)}
; Y = 1.2753552091790592015740912756882607936859130859375p-28 {+ 1240089617453336 -28 (4.75107e-009)}
; Z = 1.0546372657551834617351005363161675631999969482421875p-47 {+ 246064369695587 -47 (7.49365e-015)}
; 1.7616503927512052740667058969847857952117919921875p749 x 1.2753552091790592015740912756882607936859130859375p-28 1.0546372657551834617351005363161675631999969482421875p-47 == 1.12336500257379245937272571609355509281158447265625p722
; [HW: 1.12336500257379245937272571609355509281158447265625p722] 

; mpf : + 555586579621892 722
; mpfd: + 555586579621892 722 (2.47844e+217) class: Pos. norm. non-zero
; hwf : + 555586579621892 722 (2.47844e+217) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011101100 #b1100001011111011100001010010011111011010000110111000)))
(assert (= y (fp #b0 #b01111100011 #b0100011001111101101011011101001000110101000100011000)))
(assert (= z (fp #b0 #b01111010000 #b0000110111111100101101010011010110001111101101100011)))
(assert (= r (fp #b0 #b11011010001 #b0001111110010100110110010100101110000110100000000100)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
