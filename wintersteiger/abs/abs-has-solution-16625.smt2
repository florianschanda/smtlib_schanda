(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7970775502690059521881948967347852885723114013671875p-707 {+ 3589718158376883 -707 (2.66907e-213)}
; 1.7970775502690059521881948967347852885723114013671875p-707 | == 1.7970775502690059521881948967347852885723114013671875p-707
; [HW: 1.7970775502690059521881948967347852885723114013671875p-707] 

; mpf : + 3589718158376883 -707
; mpfd: + 3589718158376883 -707 (2.66907e-213) class: Pos. norm. non-zero
; hwf : + 3589718158376883 -707 (2.66907e-213) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100111100 #b1100110000001101010001100011101011000111111110110011)))
(assert (= r (fp #b0 #b00100111100 #b1100110000001101010001100011101011000111111110110011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
