(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.83456942730503147487297610496170818805694580078125p279 {- 3758566561825748 279 (-1.78198e+084)}
; Y = -1.8724681534730673870825512494775466620922088623046875p815 {- 3929247250873931 815 (-4.0913e+245)}
; -1.83456942730503147487297610496170818805694580078125p279 > -1.8724681534730673870825512494775466620922088623046875p815 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100010110 #b1101010110100110010101111000110010000100001111010100)))
(assert (= y (fp #b1 #b11100101110 #b1101111101011010000100101010100111110111111001001011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
