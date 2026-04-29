(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.73101160795808883818835965939797461032867431640625p1018 {- 3292183605203556 1018 (-4.86223e+306)}
; Y = -1.718380824435685294560016700415872037410736083984375p-639 {- 3235299613238662 -639 (-7.53273e-193)}
; -1.73101160795808883818835965939797461032867431640625p1018 < -1.718380824435685294560016700415872037410736083984375p-639 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111111001 #b1011101100100011100100111010010100101101001001100100)))
(assert (= y (fp #b1 #b00110000000 #b1011011111100111110011100100001100000110010110000110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
