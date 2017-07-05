(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.198201230597546018685761737287975847721099853515625p-966 {+ 892618988263482 -966 (1.92112e-291)}
; 1.198201230597546018685761737287975847721099853515625p-966 | == 1.198201230597546018685761737287975847721099853515625p-966
; [HW: 1.198201230597546018685761737287975847721099853515625p-966] 

; mpf : + 892618988263482 -966
; mpfd: + 892618988263482 -966 (1.92112e-291) class: Pos. norm. non-zero
; hwf : + 892618988263482 -966 (1.92112e-291) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000111001 #b0011001010111101010100001101101101110001100000111010)))
(assert (= r (fp #b0 #b00000111001 #b0011001010111101010100001101101101110001100000111010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
