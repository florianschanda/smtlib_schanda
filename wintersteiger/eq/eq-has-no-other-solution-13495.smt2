(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4317991414559843033060815287171863019466400146484375p-238 {+ 1944650452560071 -238 (3.24148e-072)}
; Y = 1.3258891108385169044225904144695959985256195068359375p-490 {+ 1467674078136447 -490 (4.14772e-148)}
; 1.4317991414559843033060815287171863019466400146484375p-238 = 1.3258891108385169044225904144695959985256195068359375p-490 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100010001 #b0110111010001010011000110111011011111110100011000111)))
(assert (= y (fp #b0 #b01000010101 #b0101001101101101011110000000000100101100100001111111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
