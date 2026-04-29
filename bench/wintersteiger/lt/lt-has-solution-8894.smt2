(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1876990918071197445016196070355363190174102783203125p-702 {- 845321559920325 -702 (-5.64481e-212)}
; Y = 1.4341965509164917857987120441976003348827362060546875p-612 {+ 1955447424913067 -612 (8.43823e-185)}
; -1.1876990918071197445016196070355363190174102783203125p-702 < 1.4341965509164917857987120441976003348827362060546875p-612 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101000001 #b0011000000001101000011000011010011001100111011000101)))
(assert (= y (fp #b0 #b00110011011 #b0110111100100111100000010101001000111000111010101011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
