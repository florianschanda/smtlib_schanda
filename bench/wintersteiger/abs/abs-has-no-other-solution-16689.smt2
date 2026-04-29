(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6926085490697311275454239876125939190387725830078125p860 {- 3119231603504061 860 (-1.30123e+259)}
; -1.6926085490697311275454239876125939190387725830078125p860 | == 1.6926085490697311275454239876125939190387725830078125p860
; [HW: 1.6926085490697311275454239876125939190387725830078125p860] 

; mpf : + 3119231603504061 860
; mpfd: + 3119231603504061 860 (1.30123e+259) class: Pos. norm. non-zero
; hwf : + 3119231603504061 860 (1.30123e+259) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101011011 #b1011000101001110110010110011101100101111001110111101)))
(assert (= r (fp #b0 #b11101011011 #b1011000101001110110010110011101100101111001110111101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
