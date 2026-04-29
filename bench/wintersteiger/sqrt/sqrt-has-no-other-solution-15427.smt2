(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.61493404462928236142715832102112472057342529296875p-246 {+ 2769416734249868 -246 (1.42816e-074)}
; 1.61493404462928236142715832102112472057342529296875p-246 S == 1.2708005526554047026621674376656301319599151611328125p-123
; [HW: 1.2708005526554047026621674376656301319599151611328125p-123] 

; mpf : + 1219577268030605 -123
; mpfd: + 1219577268030605 -123 (1.19506e-037) class: Pos. norm. non-zero
; hwf : + 1219577268030605 -123 (1.19506e-037) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100001001 #b1001110101101100010100010100101011100001001110001100)))
(assert (= r (fp #b0 #b01110000100 #b0100010101010011001011110101110101100100110010001101)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
