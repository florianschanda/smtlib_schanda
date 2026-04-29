(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.970403930230062439221683234791271388530731201171875p449 {+ 4370310778582974 449 (2.86433e+135)}
; 1.970403930230062439221683234791271388530731201171875p449 S == 1.9851468108077359175922538270242512226104736328125p224
; [HW: 1.9851468108077359175922538270242512226104736328125p224] 

; mpf : + 4436706810058952 224
; mpfd: + 4436706810058952 224 (5.35195e+067) class: Pos. norm. non-zero
; hwf : + 4436706810058952 224 (5.35195e+067) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111000000 #b1111100001101100011001000101100000111111011110111110)))
(assert (= r (fp #b0 #b10011011111 #b1111110000110010100101001101011000101101100011001000)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
