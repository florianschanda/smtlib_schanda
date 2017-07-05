(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.524192687490359077173707191832363605499267578125p322 {+ 2360753992051920 322 (1.30226e+097)}
; 1.524192687490359077173707191832363605499267578125p322 S == 1.23458198897050142051057264325208961963653564453125p161
; [HW: 1.23458198897050142051057264325208961963653564453125p161] 

; mpf : + 1056463358115380 161
; mpfd: + 1056463358115380 161 (3.60869e+048) class: Pos. norm. non-zero
; hwf : + 1056463358115380 161 (3.60869e+048) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101000001 #b1000011000110001011111011111000110010010110011010000)))
(assert (= r (fp #b0 #b10010100000 #b0011110000001101100100001011001011011011111000110100)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
