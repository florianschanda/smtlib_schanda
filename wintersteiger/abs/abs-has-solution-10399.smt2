(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.885355768934875886344570972141809761524200439453125p257 {+ 3987287911065426 257 (4.36619e+077)}
; 1.885355768934875886344570972141809761524200439453125p257 | == 1.885355768934875886344570972141809761524200439453125p257
; [HW: 1.885355768934875886344570972141809761524200439453125p257] 

; mpf : + 3987287911065426 257
; mpfd: + 3987287911065426 257 (4.36619e+077) class: Pos. norm. non-zero
; hwf : + 3987287911065426 257 (4.36619e+077) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000000 #b1110001010100110101011001111100011100110011101010010)))
(assert (= r (fp #b0 #b10100000000 #b1110001010100110101011001111100011100110011101010010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
