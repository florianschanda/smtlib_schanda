(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8512856912967923239676792945829220116138458251953125p99 {+ 3833849922110069 99 (1.17339e+030)}
; 1.8512856912967923239676792945829220116138458251953125p99 S == 1.924206689156231053772216910147108137607574462890625p49
; [HW: 1.924206689156231053772216910147108137607574462890625p49] 

; mpf : + 4162256900897322 49
; mpfd: + 4162256900897322 49 (1.08323e+015) class: Pos. norm. non-zero
; hwf : + 4162256900897322 49 (1.08323e+015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001100010 #b1101100111101101110110111110101110101100001001110101)))
(assert (= r (fp #b0 #b10000110000 #b1110110010011000110011110100000010101011101000101010)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
