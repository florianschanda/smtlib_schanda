(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.242051256600141595498598690028302371501922607421875p-952 {+ 1090101949028958 -952 (3.26275e-287)}
; 1.242051256600141595498598690028302371501922607421875p-952 S == 1.1144735333780435571071620870498009026050567626953125p-476
; [HW: 1.1144735333780435571071620870498009026050567626953125p-476] 

; mpf : + 515542962265141 -476
; mpfd: + 515542962265141 -476 (5.71205e-144) class: Pos. norm. non-zero
; hwf : + 515542962265141 -476 (5.71205e-144) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001000111 #b0011110111110111000100100011011100001101101001011110)))
(assert (= r (fp #b0 #b01000100011 #b0001110101001110001000110011001000011101110000110101)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
