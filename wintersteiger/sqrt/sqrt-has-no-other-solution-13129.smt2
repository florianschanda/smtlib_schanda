(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4284521178413509545634951791726052761077880859375p290 {+ 1929576798256408 290 (2.84161e+087)}
; 1.4284521178413509545634951791726052761077880859375p290 S == 1.195178697032937886746140065952204167842864990234375p145
; [HW: 1.195178697032937886746140065952204167842864990234375p145] 

; mpf : + 879006707228198 145
; mpfd: + 879006707228198 145 (5.33068e+043) class: Pos. norm. non-zero
; hwf : + 879006707228198 145 (5.33068e+043) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100100001 #b0110110110101111000010011011101000000111110100011000)))
(assert (= r (fp #b0 #b10010010000 #b0011000111110111001110110010100010100001111000100110)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
