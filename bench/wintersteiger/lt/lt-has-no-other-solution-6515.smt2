(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.553478492190799808980727902962826192378997802734375p793 {+ 2492645531188070 793 (8.09267e+238)}
; Y = 1.1799559843793485658380859604221768677234649658203125p854 {+ 810449704193925 854 (1.41737e+257)}
; 1.553478492190799808980727902962826192378997802734375p793 < 1.1799559843793485658380859604221768677234649658203125p854 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100011000 #b1000110110110000110001000011011011111111101101100110)))
(assert (= y (fp #b0 #b11101010101 #b0010111000010001100110000110101110100000111110000101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
