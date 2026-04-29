(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0768036712668436205575517305987887084484100341796875p908 {- 345892985298043 908 (-2.33009e+273)}
; -1.0768036712668436205575517305987887084484100341796875p908 | == 1.0768036712668436205575517305987887084484100341796875p908
; [HW: 1.0768036712668436205575517305987887084484100341796875p908] 

; mpf : + 345892985298043 908
; mpfd: + 345892985298043 908 (2.33009e+273) class: Pos. norm. non-zero
; hwf : + 345892985298043 908 (2.33009e+273) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110001011 #b0001001110101001011001111100100001001101110001111011)))
(assert (= r (fp #b0 #b11110001011 #b0001001110101001011001111100100001001101110001111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
