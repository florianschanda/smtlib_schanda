(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3869718790060099333771859164698980748653411865234375p630 {+ 1742766410094327 630 (6.17966e+189)}
; 1.3869718790060099333771859164698980748653411865234375p630 | == 1.3869718790060099333771859164698980748653411865234375p630
; [HW: 1.3869718790060099333771859164698980748653411865234375p630] 

; mpf : + 1742766410094327 630
; mpfd: + 1742766410094327 630 (6.17966e+189) class: Pos. norm. non-zero
; hwf : + 1742766410094327 630 (6.17966e+189) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001110101 #b0110001100010000100101101100110011001101011011110111)))
(assert (= r (fp #b0 #b11001110101 #b0110001100010000100101101100110011001101011011110111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
