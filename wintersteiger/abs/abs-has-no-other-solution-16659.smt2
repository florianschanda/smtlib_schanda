(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0802278332616113143416214370517991483211517333984375p742 {+ 361314039981735 742 (2.49903e+223)}
; 1.0802278332616113143416214370517991483211517333984375p742 | == 1.0802278332616113143416214370517991483211517333984375p742
; [HW: 1.0802278332616113143416214370517991483211517333984375p742] 

; mpf : + 361314039981735 742
; mpfd: + 361314039981735 742 (2.49903e+223) class: Pos. norm. non-zero
; hwf : + 361314039981735 742 (2.49903e+223) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011100101 #b0001010010001001110011111011000000010110011010100111)))
(assert (= r (fp #b0 #b11011100101 #b0001010010001001110011111011000000010110011010100111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
