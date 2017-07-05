(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8669758503117444004004710222943685948848724365234375p-230 {- 3904512116403191 -230 (-1.08203e-069)}
; Y = 1.7446716852127315267040330581949092447757720947265625p492 {+ 3353703124037417 492 (2.23086e+148)}
; -1.8669758503117444004004710222943685948848724365234375p-230 < 1.7446716852127315267040330581949092447757720947265625p492 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100011001 #b1101110111110010001000010001101110000010101111110111)))
(assert (= y (fp #b0 #b10111101011 #b1011111010100010110011011011011000111110111100101001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
