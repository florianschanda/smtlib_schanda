(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.072990463507172531620881272829137742519378662109375p580 {+ 328719824252502 580 (4.24613e+174)}
; Y = -1.6749073478278997395563010286423377692699432373046875p-871 {- 3039512480187339 -871 (-1.06381e-262)}
; 1.072990463507172531620881272829137742519378662109375p580 < -1.6749073478278997395563010286423377692699432373046875p-871 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001000011 #b0001001010101111100000001100010110101110111001010110)))
(assert (= y (fp #b1 #b00010011000 #b1010110011000110101110100101101011000000001111001011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
