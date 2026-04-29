(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.360019471786820144387775144423358142375946044921875p326 {+ 1621383558985246 326 (1.85919e+098)}
; 1.360019471786820144387775144423358142375946044921875p326 S == 1.1661987273989027347198543793638236820697784423828125p163
; [HW: 1.1661987273989027347198543793638236820697784423828125p163] 

; mpf : + 748492526783149 163
; mpfd: + 748492526783149 163 (1.36352e+049) class: Pos. norm. non-zero
; hwf : + 748492526783149 163 (1.36352e+049) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101000101 #b0101110000101010001111000111000100111111011000011110)))
(assert (= r (fp #b0 #b10010100010 #b0010101010001011111111111111001011010000101010101101)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
