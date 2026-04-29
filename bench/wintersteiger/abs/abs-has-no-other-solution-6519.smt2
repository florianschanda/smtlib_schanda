(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.168719526128020103072913116193376481533050537109375p930 {- 759845195000278 930 (-1.06073e+280)}
; -1.168719526128020103072913116193376481533050537109375p930 | == 1.168719526128020103072913116193376481533050537109375p930
; [HW: 1.168719526128020103072913116193376481533050537109375p930] 

; mpf : + 759845195000278 930
; mpfd: + 759845195000278 930 (1.06073e+280) class: Pos. norm. non-zero
; hwf : + 759845195000278 930 (1.06073e+280) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110100001 #b0010101100110001001100111110111011101010100111010110)))
(assert (= r (fp #b0 #b11110100001 #b0010101100110001001100111110111011101010100111010110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
