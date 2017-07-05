(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8725690795352980533294839915470220148563385009765625p112 {- 3929701781450185 112 (-9.72293e+033)}
; -1.8725690795352980533294839915470220148563385009765625p112 | == 1.8725690795352980533294839915470220148563385009765625p112
; [HW: 1.8725690795352980533294839915470220148563385009765625p112] 

; mpf : + 3929701781450185 112
; mpfd: + 3929701781450185 112 (9.72293e+033) class: Pos. norm. non-zero
; hwf : + 3929701781450185 112 (9.72293e+033) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001101111 #b1101111101100000101011111110110000011010110111001001)))
(assert (= r (fp #b0 #b10001101111 #b1101111101100000101011111110110000011010110111001001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
