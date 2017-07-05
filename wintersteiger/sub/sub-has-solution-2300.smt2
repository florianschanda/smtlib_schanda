(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1405144416471610924190827063284814357757568359375p-782 {- 632820787042328 -782 (-4.48378e-236)}
; Y = 1.5762306786013875470331413453095592558383941650390625p-849 {+ 2595112269428657 -849 (4.19907e-256)}
; -1.1405144416471610924190827063284814357757568359375p-782 - 1.5762306786013875470331413453095592558383941650390625p-849 == -1.1405144416471610924190827063284814357757568359375p-782
; [HW: -1.1405144416471610924190827063284814357757568359375p-782] 

; mpf : - 632820787042328 -782
; mpfd: - 632820787042328 -782 (-4.48378e-236) class: Neg. norm. non-zero
; hwf : - 632820787042328 -782 (-4.48378e-236) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011110001 #b0010001111111000110000010010001101111101100000011000)))
(assert (= y (fp #b0 #b00010101110 #b1001001110000011110110101000111110001011011110110001)))
(assert (= r (fp #b1 #b00011110001 #b0010001111111000110000010010001101111101100000011000)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)
