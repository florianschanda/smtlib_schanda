(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1278149409581159634541336345137096941471099853515625p981 {+ 575627320471353 981 (2.30496e+295)}
; 1.1278149409581159634541336345137096941471099853515625p981 S == 1.5018754548617645472319281907402910292148590087890625p490
; [HW: 1.5018754548617645472319281907402910292148590087890625p490] 

; mpf : + 2260246111501841 490
; mpfd: + 2260246111501841 490 (4.801e+147) class: Pos. norm. non-zero
; hwf : + 2260246111501841 490 (4.801e+147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111010100 #b0010000010111000011110101101111101011010111100111001)))
(assert (= r (fp #b0 #b10111101001 #b1000000001111010111010001110100101001011111000010001)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
