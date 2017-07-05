(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3152083861934038555574488782440312206745147705078125p53 {- 1419572370604669 53 (-1.18463e+016)}
; -1.3152083861934038555574488782440312206745147705078125p53 | == 1.3152083861934038555574488782440312206745147705078125p53
; [HW: 1.3152083861934038555574488782440312206745147705078125p53] 

; mpf : + 1419572370604669 53
; mpfd: + 1419572370604669 53 (1.18463e+016) class: Pos. norm. non-zero
; hwf : + 1419572370604669 53 (1.18463e+016) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000110100 #b0101000010110001011111110010111000100000001001111101)))
(assert (= r (fp #b0 #b10000110100 #b0101000010110001011111110010111000100000001001111101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
