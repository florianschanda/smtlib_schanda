(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.12880950539020208367446684860624372959136962890625p975 {+ 580106440477092 975 (3.60468e+293)}
; 1.12880950539020208367446684860624372959136962890625p975 S == 1.5025375239175904340527267777360975742340087890625p487
; [HW: 1.5025375239175904340527267777360975742340087890625p487] 

; mpf : + 2263227805454952 487
; mpfd: + 2263227805454952 487 (6.0039e+146) class: Pos. norm. non-zero
; hwf : + 2263227805454952 487 (6.0039e+146) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111001110 #b0010000011111001101010001110010100010000100110100100)))
(assert (= r (fp #b0 #b10111100110 #b1000000010100110010011001001011000111101001001101000)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
