(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3412175951256750661144678815617226064205169677734375p985 {+ 1536707434260247 985 (4.38576e+296)}
; 1.3412175951256750661144678815617226064205169677734375p985 | == 1.3412175951256750661144678815617226064205169677734375p985
; [HW: 1.3412175951256750661144678815617226064205169677734375p985] 

; mpf : + 1536707434260247 985
; mpfd: + 1536707434260247 985 (4.38576e+296) class: Pos. norm. non-zero
; hwf : + 1536707434260247 985 (4.38576e+296) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111011000 #b0101011101011010000010010100101111100010011100010111)))
(assert (= r (fp #b0 #b11111011000 #b0101011101011010000010010100101111100010011100010111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
