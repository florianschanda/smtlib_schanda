(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2747213668016408316674414891167543828487396240234375p616 {- 1237235045158583 616 (-3.46651e+185)}
; -1.2747213668016408316674414891167543828487396240234375p616 | == 1.2747213668016408316674414891167543828487396240234375p616
; [HW: 1.2747213668016408316674414891167543828487396240234375p616] 

; mpf : + 1237235045158583 616
; mpfd: + 1237235045158583 616 (3.46651e+185) class: Pos. norm. non-zero
; hwf : + 1237235045158583 616 (3.46651e+185) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001100111 #b0100011001010100001000111011010111101100111010110111)))
(assert (= r (fp #b0 #b11001100111 #b0100011001010100001000111011010111101100111010110111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
