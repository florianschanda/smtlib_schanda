(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6415896337798800974638879779377020895481109619140625p-227 {+ 2889462835615841 -227 (7.61124e-069)}
; Y = 1.847725069002234210557844562572427093982696533203125p845 {+ 3817814304871090 845 (4.33495e+254)}
; 1.6415896337798800974638879779377020895481109619140625p-227 > 1.847725069002234210557844562572427093982696533203125p845 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100011100 #b1010010000111111001101111101111010001001100001100001)))
(assert (= y (fp #b0 #b11101001100 #b1101100100000100100000101001011101011101001010110010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
