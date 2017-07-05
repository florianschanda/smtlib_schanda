(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2975081411563156308375255321152508258819580078125p896 {+ 1339857553651272 896 (6.85466e+269)}
; 1.2975081411563156308375255321152508258819580078125p896 S == 1.1390821485548421332367752256686799228191375732421875p448
; [HW: 1.1390821485548421332367752256686799228191375732421875p448] 

; mpf : + 626370312405475 448
; mpfd: + 626370312405475 448 (8.27929e+134) class: Pos. norm. non-zero
; hwf : + 626370312405475 448 (8.27929e+134) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101111111 #b0100110000101001011111100101100010001111011001001000)))
(assert (= r (fp #b0 #b10110111111 #b0010001110011010111000110011111110000000000111100011)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
