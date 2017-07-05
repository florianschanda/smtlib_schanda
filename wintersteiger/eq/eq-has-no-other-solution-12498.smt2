(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0074788632566515911292981400038115680217742919921875p502 {+ 33681805775811 502 (1.31915e+151)}
; Y = 1.989084877004141826972727358224801719188690185546875p-447 {+ 4454442283513646 -447 (5.47325e-135)}
; 1.0074788632566515911292981400038115680217742919921875p502 = 1.989084877004141826972727358224801719188690185546875p-447 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111110101 #b0000000111101010001000101000000100011001001111000011)))
(assert (= y (fp #b0 #b01001000000 #b1111110100110100101010101001111110110011011100101110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
