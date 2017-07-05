(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 0.03666587543471155896668278728611767292022705078125p-1022 {+ 165128422944980 -1023 (8.15843e-310)}
; 0.03666587543471155896668278728611767292022705078125p-1022 S == 1.531866844024486251640837508602999150753021240234375p-514
; [HW: 1.531866844024486251640837508602999150753021240234375p-514] 

; mpf : + 2395315320559398 -514
; mpfd: + 2395315320559398 -514 (2.8563e-155) class: Pos. norm. non-zero
; hwf : + 2395315320559398 -514 (2.8563e-155) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000100101100010111011110100111111011111000011010100)))
(assert (= r (fp #b0 #b00111111101 #b1000100000101000011011001110110011101001011100100110)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
