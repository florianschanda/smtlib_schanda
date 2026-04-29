(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.49983461376742166493158947560004889965057373046875p963 {+ 2251054980309836 963 (1.16931e+290)}
; Y = 1.3569237763220181047785217742784880101680755615234375p855 {+ 1607441786043511 855 (3.25988e+257)}
; 1.49983461376742166493158947560004889965057373046875p963 = 1.3569237763220181047785217742784880101680755615234375p855 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111000010 #b0111111111110101001010010100011110001010001101001100)))
(assert (= y (fp #b0 #b11101010110 #b0101101101011111010110110100101001110111110001110111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
