(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7585084527835019851949027724913321435451507568359375p-449 {+ 3416018385313151 -449 (1.2097e-135)}
; 1.7585084527835019851949027724913321435451507568359375p-449 S == 1.8753711380862732038821150126750580966472625732421875p-225
; [HW: 1.8753711380862732038821150126750580966472625732421875p-225] 

; mpf : + 3942321131296227 -225
; mpfd: + 3942321131296227 -225 (3.47807e-068) class: Pos. norm. non-zero
; hwf : + 3942321131296227 -225 (3.47807e-068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000111110 #b1100001000101101100111000010011001110001110101111111)))
(assert (= r (fp #b0 #b01100011110 #b1110000000011000010100101010100111110001010111100011)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
