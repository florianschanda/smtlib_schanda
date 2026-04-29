(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.947018437986577144016564488993026316165924072265625p-537 {+ 4264991884429338 -537 (4.32775e-162)}
; 1.947018437986577144016564488993026316165924072265625p-537 S == 1.9733314156454191401479647538508288562297821044921875p-269
; [HW: 1.9733314156454191401479647538508288562297821044921875p-269] 

; mpf : + 4383495000808707 -269
; mpfd: + 4383495000808707 -269 (2.08033e-081) class: Pos. norm. non-zero
; hwf : + 4383495000808707 -269 (2.08033e-081) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111100110 #b1111001001101111110011001110001111011100100000011010)))
(assert (= r (fp #b0 #b01011110010 #b1111100100101100001111110110011001011101110100000011)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
