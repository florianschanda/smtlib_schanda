(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 0.5869177847071604947615242053871043026447296142578125p-1022 {+ 2643242716504285 -1023 (1.30594e-308)}
; 0.5869177847071604947615242053871043026447296142578125p-1022 S == 1.5322111926326089648142669830122031271457672119140625p-512
; [HW: 1.5322111926326089648142669830122031271457672119140625p-512] 

; mpf : + 2396866128822625 -512
; mpfd: + 2396866128822625 -512 (1.14278e-154) class: Pos. norm. non-zero
; hwf : + 2396866128822625 -512 (1.14278e-154) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b1001011001000000001111100111001011000010000011011101)))
(assert (= r (fp #b0 #b00111111111 #b1000100000111110111111100010001011101100000101100001)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
