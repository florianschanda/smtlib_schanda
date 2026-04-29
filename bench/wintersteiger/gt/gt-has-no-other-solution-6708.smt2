(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.448344698940648545004705738392658531665802001953125p-739 {- 2019165019082642 -739 (-5.00847e-223)}
; Y = -1.5169343105136128269094797360594384372234344482421875p-709 {- 2328065168204131 -709 (-5.63248e-214)}
; -1.448344698940648545004705738392658531665802001953125p-739 > -1.5169343105136128269094797360594384372234344482421875p-709 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100011100 #b0111001011000110101101111101101101001000111110010010)))
(assert (= y (fp #b1 #b00100111010 #b1000010001010101110011101001010111010110000101100011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
