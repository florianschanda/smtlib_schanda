(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.263711606795532294000850015436299145221710205078125p-1021 {+ 1187651494097634 -1021 (5.6237e-308)}
; 1.263711606795532294000850015436299145221710205078125p-1021 | == 1.263711606795532294000850015436299145221710205078125p-1021
; [HW: 1.263711606795532294000850015436299145221710205078125p-1021] 

; mpf : + 1187651494097634 -1021
; mpfd: + 1187651494097634 -1021 (5.6237e-308) class: Pos. norm. non-zero
; hwf : + 1187651494097634 -1021 (5.6237e-308) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000010 #b0100001110000010100110101001011011000011001011100010)))
(assert (= r (fp #b0 #b00000000010 #b0100001110000010100110101001011011000011001011100010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
