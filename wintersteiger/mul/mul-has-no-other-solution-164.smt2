(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.475957854757547149660013019456528127193450927734375p275 {+ 2143523617330150 275 (8.9603e+082)}
; Y = 1.06676554598371087223540598643012344837188720703125p113 {+ 300685288013428 113 (1.10779e+034)}
; 1.475957854757547149660013019456528127193450927734375p275 * 1.06676554598371087223540598643012344837188720703125p113 == 1.57450098677938132851750197005458176136016845703125p388
; [HW: 1.57450098677938132851750197005458176136016845703125p388] 

; mpf : + 2587322429983604 388
; mpfd: + 2587322429983604 388 (9.92616e+116) class: Pos. norm. non-zero
; hwf : + 2587322429983604 388 (9.92616e+116) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100010010 #b0111100111011000010111111011110001110101001111100110)))
(assert (= y (fp #b0 #b10001110000 #b0001000100010111100010111111110001111111111001110100)))
(assert (= r (fp #b0 #b10110000011 #b1001001100010010011111110010010110111100101101110100)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
