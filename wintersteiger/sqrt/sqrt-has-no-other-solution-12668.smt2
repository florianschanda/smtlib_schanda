(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5076495183153426626887494421680457890033721923828125p-176 {+ 2286250181519789 -176 (1.57406e-053)}
; 1.5076495183153426626887494421680457890033721923828125p-176 S == 1.2278638028361867906568249964038841426372528076171875p-88
; [HW: 1.2278638028361867906568249964038841426372528076171875p-88] 

; mpf : + 1026207337544275 -88
; mpfd: + 1026207337544275 -88 (3.96744e-027) class: Pos. norm. non-zero
; hwf : + 1026207337544275 -88 (3.96744e-027) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101001111 #b1000000111110101010100011001111011111110100110101101)))
(assert (= r (fp #b0 #b01110100111 #b0011101001010101010010000011110100011111101001010011)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
