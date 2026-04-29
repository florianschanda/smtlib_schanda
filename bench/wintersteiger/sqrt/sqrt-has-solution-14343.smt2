(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.610336497673745537184686327236704528331756591796875p-231 {+ 2748711223494094 -231 (4.66646e-070)}
; 1.610336497673745537184686327236704528331756591796875p-231 S == 1.794623357517529438354131343658082187175750732421875p-116
; [HW: 1.794623357517529438354131343658082187175750732421875p-116] 

; mpf : + 3578665456815838 -116
; mpfd: + 3578665456815838 -116 (2.1602e-035) class: Pos. norm. non-zero
; hwf : + 3578665456815838 -116 (2.1602e-035) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100011000 #b1001110000111111000000110100000100010000010111001110)))
(assert (= r (fp #b0 #b01110001011 #b1100101101101100011011111011010100101100111011011110)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
