(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.613787061672492750830087970825843513011932373046875p-3 {+ 2764251182233070 -3 (0.201723)}
; 1.613787061672492750830087970825843513011932373046875p-3 S == 1.7965450518550836189746178206405602395534515380859375p-2
; [HW: 1.7965450518550836189746178206405602395534515380859375p-2] 

; mpf : + 3587319998718367 -2
; mpfd: + 3587319998718367 -2 (0.449136) class: Pos. norm. non-zero
; hwf : + 3587319998718367 -2 (0.449136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111111100 #b1001110100100001001001100001110010010111010111101110)))
(assert (= r (fp #b0 #b01111111101 #b1100101111101010011000000110001110000010000110011111)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
