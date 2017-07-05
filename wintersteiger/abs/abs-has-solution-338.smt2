(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9430605021745128713206440806970931589603424072265625p454 {- 4247166926180969 454 (-9.03867e+136)}
; -1.9430605021745128713206440806970931589603424072265625p454 | == 1.9430605021745128713206440806970931589603424072265625p454
; [HW: 1.9430605021745128713206440806970931589603424072265625p454] 

; mpf : + 4247166926180969 454
; mpfd: + 4247166926180969 454 (9.03867e+136) class: Pos. norm. non-zero
; hwf : + 4247166926180969 454 (9.03867e+136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111000101 #b1111000101101100011010011011111011111101001001101001)))
(assert (= r (fp #b0 #b10111000101 #b1111000101101100011010011011111011111101001001101001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
