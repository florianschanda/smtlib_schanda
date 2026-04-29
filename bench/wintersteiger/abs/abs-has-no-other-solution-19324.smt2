(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.20340407994379727796285806107334792613983154296875p53 {+ 916050538640524 53 (1.08393e+016)}
; 1.20340407994379727796285806107334792613983154296875p53 | == 1.20340407994379727796285806107334792613983154296875p53
; [HW: 1.20340407994379727796285806107334792613983154296875p53] 

; mpf : + 916050538640524 53
; mpfd: + 916050538640524 53 (1.08393e+016) class: Pos. norm. non-zero
; hwf : + 916050538640524 53 (1.08393e+016) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000110100 #b0011010000010010010010100010111100111011010010001100)))
(assert (= r (fp #b0 #b10000110100 #b0011010000010010010010100010111100111011010010001100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
