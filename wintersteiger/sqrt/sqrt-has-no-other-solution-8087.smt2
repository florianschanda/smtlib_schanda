(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1204499279045425641498923141625709831714630126953125p969 {+ 542458250427701 969 (5.5906e+291)}
; 1.1204499279045425641498923141625709831714630126953125p969 S == 1.496963545250546534504110240959562361240386962890625p484
; [HW: 1.496963545250546534504110240959562361240386962890625p484] 

; mpf : + 2238124837207082 484
; mpfd: + 2238124837207082 484 (7.47703e+145) class: Pos. norm. non-zero
; hwf : + 2238124837207082 484 (7.47703e+145) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111001000 #b0001111011010101110011100111010100100111110100110101)))
(assert (= r (fp #b0 #b10111100011 #b0111111100111001000000001011111000100111110000101010)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
