(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.188159345225778817933814934804104268550872802734375p-964 {+ 847394357045094 -964 (7.62007e-291)}
; 1.188159345225778817933814934804104268550872802734375p-964 S == 1.090027222240701032518472857191227376461029052734375p-482
; [HW: 1.090027222240701032518472857191227376461029052734375p-482] 

; mpf : + 405446564536422 -482
; mpfd: + 405446564536422 -482 (8.7293e-146) class: Pos. norm. non-zero
; hwf : + 405446564536422 -482 (8.7293e-146) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000111011 #b0011000000101011001101011111101000101110011101100110)))
(assert (= r (fp #b0 #b01000011101 #b0001011100001100000001100010011101000110000001100110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
