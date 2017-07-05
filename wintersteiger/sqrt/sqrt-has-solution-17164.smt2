(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6385618759848659120592628823942504823207855224609375p-895 {+ 2875827026738447 -895 (6.20321e-270)}
; 1.6385618759848659120592628823942504823207855224609375p-895 S == 1.8102827823215166258563613155274651944637298583984375p-448
; [HW: 1.8102827823215166258563613155274651944637298583984375p-448] 

; mpf : + 3649189236527911 -448
; mpfd: + 3649189236527911 -448 (2.49063e-135) class: Pos. norm. non-zero
; hwf : + 3649189236527911 -448 (2.49063e-135) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010000000 #b1010001101111000110010101000010111010011110100001111)))
(assert (= r (fp #b0 #b01000111111 #b1100111101101110101100010100001010010101001100100111)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
