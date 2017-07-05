(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.983162209518243290773398257442750036716461181640625p936 {+ 4427768960431114 936 (1.15195e+282)}
; 1.983162209518243290773398257442750036716461181640625p936 | == 1.983162209518243290773398257442750036716461181640625p936
; [HW: 1.983162209518243290773398257442750036716461181640625p936] 

; mpf : + 4427768960431114 936
; mpfd: + 4427768960431114 936 (1.15195e+282) class: Pos. norm. non-zero
; hwf : + 4427768960431114 936 (1.15195e+282) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110100111 #b1111101110110000100001001100000010001011010000001010)))
(assert (= r (fp #b0 #b11110100111 #b1111101110110000100001001100000010001011010000001010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
