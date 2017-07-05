(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.751188238294859811361448009847663342952728271484375p-635 {+ 3383051070069830 -635 (1.22825e-191)}
; 1.751188238294859811361448009847663342952728271484375p-635 S == 1.871463725694334723215206395252607762813568115234375p-318
; [HW: 1.871463725694334723215206395252607762813568115234375p-318] 

; mpf : + 3924723710303910 -318
; mpfd: + 3924723710303910 -318 (3.50463e-096) class: Pos. norm. non-zero
; hwf : + 3924723710303910 -318 (3.50463e-096) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110000100 #b1100000001001101110111110101010010011101110001000110)))
(assert (= r (fp #b0 #b01011000001 #b1101111100011000001111110010100110000001111010100110)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
