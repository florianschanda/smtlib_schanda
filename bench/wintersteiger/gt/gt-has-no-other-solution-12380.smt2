(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4098933892622020902507529171998612582683563232421875p925 {- 1845995715142883 925 (-3.99882e+278)}
; Y = 1.6436055920095775650935365774785168468952178955078125p110 {+ 2898541904347901 110 (2.13352e+033)}
; -1.4098933892622020902507529171998612582683563232421875p925 > 1.6436055920095775650935365774785168468952178955078125p110 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110011100 #b0110100011101110110001011110110110111010010011100011)))
(assert (= y (fp #b0 #b10001101101 #b1010010011000011010101100000100100110100001011111101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
