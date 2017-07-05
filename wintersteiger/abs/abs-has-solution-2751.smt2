(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.85425580868481887364396243356168270111083984375p715 {+ 3847226141672032 715 (3.19607e+215)}
; 1.85425580868481887364396243356168270111083984375p715 | == 1.85425580868481887364396243356168270111083984375p715
; [HW: 1.85425580868481887364396243356168270111083984375p715] 

; mpf : + 3847226141672032 715
; mpfd: + 3847226141672032 715 (3.19607e+215) class: Pos. norm. non-zero
; hwf : + 3847226141672032 715 (3.19607e+215) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001010 #b1101101010110000100000100011100010111000001001100000)))
(assert (= r (fp #b0 #b11011001010 #b1101101010110000100000100011100010111000001001100000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
