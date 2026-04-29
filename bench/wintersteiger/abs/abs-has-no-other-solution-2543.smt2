(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.464227292648688116827315752743743360042572021484375p930 {- 2090693862187846 930 (-1.32894e+280)}
; -1.464227292648688116827315752743743360042572021484375p930 | == 1.464227292648688116827315752743743360042572021484375p930
; [HW: 1.464227292648688116827315752743743360042572021484375p930] 

; mpf : + 2090693862187846 930
; mpfd: + 2090693862187846 930 (1.32894e+280) class: Pos. norm. non-zero
; hwf : + 2090693862187846 930 (1.32894e+280) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110100001 #b0111011011010111100110011000111111010110001101000110)))
(assert (= r (fp #b0 #b11110100001 #b0111011011010111100110011000111111010110001101000110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
